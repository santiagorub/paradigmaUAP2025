import { biblioteca } from "./clases/Biblioteca";
<<<<<<< HEAD
import { Empleado, Socio, SocioRegular, SocioVIP } from "./clases/Socio";

=======
>>>>>>> d906e65c3dbf44a0322ccff800f969c89bc42256

biblioteca.agregarLibro("El quijote", "Cervantes", "1234");
biblioteca.agregarLibro("Hábitos Atómicos", "James Clear", "2345");
const libro = biblioteca.agregarLibro("1984", "Orwell", "1984");

biblioteca.registrarSocio(31882, "Lucciano", "Curotto");
biblioteca.registrarSocio(20321, "Luca", "Giordana");
biblioteca.registrarSocio(32451, "Samuel", "Olmos");

<<<<<<< HEAD
console.log(libro.titulo, libro.autor, libro.isbn);
=======
console.log(libro.titulo, libro.autor, libro.isbn);
>>>>>>> d906e65c3dbf44a0322ccff800f969c89bc42256
