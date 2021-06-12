# Proyecto_Colineales
Se debe diseñar y escribir un programa en el paradigma funcional que compruebe, mediante cálculo explícito, que la suma de las medidas de los ángulos internos de un triángulo es igual a la medida de un ángulo directo.

Instalación
https://www.youtube.com/watch?v=MUc0jXngEMA&t=5s

cd my-project
stack setup
stack build
stack exec my-project-exe

The stack new command will create a new directory containing all the needed files to start a project correctly.
The stack setup will download the compiler if necessary in an isolated location (default ~/.stack) that won't interfere with any system-level installations. (For information on installation paths, please use the stack path command.).
The stack build command will build the minimal project.
stack exec my-project-exe will execute the command.
If you just want to install an executable using stack, then all you have to do is stack install <package-name>.