extends Sprite
###Stats
const speed = 10
var health = 200
const attackDamage = 30
const attackRange = 1000
const attackDelay=  100
##############################

var enemyInRange=false
var alliesNum=[]
var i =0
var enemyOnAttack
var attackTimer=0
func _ready():
	randomize()
	position.y=range(90,190)[randi()%range(90,190).size()]
	set_process(true)
	

func _process(delta):
	enemyInRange=false
	if(health<=0):
		queue_free()
	alliesNum =get_node("..").get_node("..").get_node("Allies").get_children()
	i=0
	while i<alliesNum.size():
	#print(get_node("..").get_node("..").get_node("Allies").get_children().size())
		if(position.x-get_node("..").get_node("..").get_node("Allies/"+str(alliesNum[i].name)).position.x<=attackRange&&position.x-get_node("..").get_node("..").get_node("Allies/"+str(alliesNum[i].name)).position.x>0):
			enemyInRange=true
			enemyOnAttack=i
			break
		i+=1
		
	if(!(enemyInRange)):
		move_local_x(-speed)
	elif (attackTimer<=0):
		get_node("..").get_node("..").get_node("Allies/"+str(alliesNum[enemyOnAttack].name)).health=get_node("..").get_node("..").get_node("Allies/"+str(alliesNum[enemyOnAttack].name)).health-attackDamage
		attackTimer=attackDelay
		
	attackTimer-=1