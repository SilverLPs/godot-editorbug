#Uncomment the class_name line below and comment the preload line in class_a, then everything will work as expected
#class_name class_b

enum testenum {
	testenum0 = 0,
	testenum1 = 1,
	testenum2 = 2
}

static var current_testenum = testenum.testenum1
static var teststring: String = "This is a test string"

static func set_current_testenum(new_current_testenum):
	current_testenum = new_current_testenum

static func set_teststring(new_teststring: String):
	teststring = new_teststring
