Godot editor bug test scenario:

Description:
Functions in a subclass calling other static functions/variables in differents scripts/classes won't error check correctly.
- Wrong calls of an existing function/variable (i.e. wrong parameters/arguments) are correctly recognized as an error by the Editor.
- Calling non existing static functions/variables in another class/script is not seen as an error and will then only crash at runtime.
- When writing a function in a subclass, auto-completion for values in an enum of another script/class won't work correctly.

Only happens if:
- The script/class of the called static functions/variables is not defined globally by using class_name but instead are loaded per script via preload.
	- However using preload instead of class_name is necessary if the called script/class is not supposed to be global (i.e. for separating parts of the non-common codebase into client/server in the same project)!
