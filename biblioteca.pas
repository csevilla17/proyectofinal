program MenuRegistroAlumnos;

var
  opcion: integer;

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
           { Aquí puedes agregar el código para el registro de alumno }
         end;
      2: begin
           writeln('Ha seleccionado la opcion 2: Alumno existente');
           { Aquí puedes agregar el código para mostrar información de alumnos existentes }
         end;
      0: writeln('Saliendo del programa...');
      else
        writeln('Opcion no valida. Por favor, seleccione una opcion valida.');
    end;
    writeln;
  until opcion = 0;
end.
