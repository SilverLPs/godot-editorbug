#Comment the preload line below and uncomment the class_name line in class_b, then everything will work as expected
static var class_b = preload("res://class_b.gd")

static func run():
	print_teststring()
	#print_nonexisting_teststring()
	change_teststring()
	#static func change_teststring_invalid_call()
	#static func call_nonexisting_function()
	change_current_testenum()

#This will run correctly, auto-completion works!
static func print_teststring():
	print(class_b.teststring)

#This would crash as the variable doesn't exist, Editor shows no error!!
static func print_nonexisting_teststring():
	print(class_b.nonexisting_teststring)

#This will run correctly, auto-completion works!
static func change_teststring():
	class_b.set_teststring("A brand new teststring")

#This would crash as the function is called without the necessary arguments, Editor recognizes error as it should.
#static func change_teststring_invalid_call():
#	class_b.set_teststring()

#This would crash as the function doesn't exist, Editor shows no error!!
static func call_nonexisting_function():
	class_b.this_function_doesnt_exist()

#This will run correctly, however autocompletion after class_b.testenum. doesn't show the entrys in testenum!
static func change_current_testenum():
	class_b.set_current_testenum(class_b.testenum.testenum2)
	print(class_b.current_testenum)
