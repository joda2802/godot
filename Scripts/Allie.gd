extends Sprite
###Stats
const speed = 10
var health = 200
const attackDamage = 30
const attackRange = 1000
const attackDelay=  100
#######################

var enemyInRange=false
var enemyNum=[]
var i =0
var enemyOnAttack
var attackTimer=0
func _ready():
	randomize()
	position.y=range(160,250)[randi()%range(160,250).size()]
	set_process(true)
	
	
func _process(delta):
	
	enemyInRange=false
	if(health<=0):
		queue_free()
	i=0
	enemyNum = get_node("..").get_node("..").get_node("Enemies").get_children()
	
	while i<enemyNum.size():
		if(get_node("..").get_node("..").get_node("Enemies/"+str(enemyNum[i].name)).position.x-position.x<=attackRange&&get_node("..").get_node("..").get_node("Enemies/"+str(enemyNum[i].name)).position.x-position.x>0):
			enemyInRange=true
			enemyOnAttack=i
			break
		i+=1
	
	if (!(enemyInRange)):
		move_local_x(speed)
	elif (attackTimer<=0):
		get_node("..").get_node("..").get_node("Enemies/"+str(enemyNum[enemyOnAttack].name)).health=get_node("..").get_node("..").get_node("Enemies/"+str(enemyNum[enemyOnAttack].name)).health-attackDamage
		attackTimer=attackDelay
		get_node("AnimationPlayer").play("attackAnimation")
	attackTimer-=1
		
		
		
		
		
		