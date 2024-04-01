program MenuRegistroAlumnos;

var
  opcion: integer;
  nombre, cedula, nombreInput, cedulaInput: string;
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
           assign(archivo, 'alumnos.txt');
           rewrite(archivo);
           writeln(archivo, 'Nombre: ', nombre);
           writeln(archivo, 'Cedula: ', cedula);
           close(archivo);
           writeln('Alumno registrado correctamente.');
           writeln('Presione Enter para volver al menu.');
           readln;
         end;
      2: begin
           writeln('Ha seleccionado la opcion 2: Alumno existente');
           write('Ingrese el nombre del alumno existente: ');
           readln(nombreInput);
           write('Ingrese el numero de cedula del alumno existente: ');
           readln(cedulaInput);
           writeln('Nombre: ', nombreInput);
           writeln('Cedula: ', cedulaInput);
           writeln('Seleccione una opcion:');
           writeln('1. Registrar préstamos.');
           writeln('2. Préstamos activos.');
           writeln('3. Libros disponibles.');
           writeln('4. Alumnos sancionados.');
           writeln('5. Renovación.');
           writeln('6. Devolución.');
           writeln('7. Ingresar nuevo libro.');
           writeln('0. Volver al menú principal.');
           write('Opcion: ');
           readln(opcion);
         end;
      0: writeln('Saliendo del programa...');
      else
        writeln('Opcion no valida. Por favor, seleccione una opcion valida.');
    end;
    writeln;
  until opcion = 0;
end.
