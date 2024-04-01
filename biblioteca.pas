program MenuRegistroAlumnos;

var
  opcion: integer;
  nombre, cedula, usuario, contrasena: string;
  archivo: text;

begin
  repeat
    writeln('Seleccione una opcion:');
    writeln('1. Registro de alumno');
    writeln('2. Alumno existente');
    writeln('0. Salir');
    write('Opcion: ');
    readln(opcion);

    case opcion of
      1: begin
           writeln('Ha seleccionado la opcion 1: Registro de alumno');
           write('Ingrese el nombre del alumno: ');
           readln(nombre);
           write('Ingrese el numero de cedula del alumno: ');
           readln(cedula);
           write('Ingrese el nombre de usuario: ');
           readln(usuario);
           write('Ingrese la contrasena: ');
           readln(contrasena);
           assign(archivo, 'alumnos.txt');
           rewrite(archivo);
           writeln(archivo, 'Nombre: ', nombre);
           writeln(archivo, 'Cedula: ', cedula);
           writeln(archivo, 'Usuario: ', usuario);
           writeln(archivo, 'Contrasena: ', contrasena);
           close(archivo);
           writeln('Alumno registrado correctamente.');
           writeln('Presione Enter para volver al menu.');
         end;
      2: begin
           writeln('Ha seleccionado la opcion 2: Alumno existente');
         end;
      0: writeln('Saliendo del programa...');
      else
        writeln('Opcion no valida. Por favor, seleccione una opcion valida.');
    end;
    writeln;
  until opcion = 0;
end.
