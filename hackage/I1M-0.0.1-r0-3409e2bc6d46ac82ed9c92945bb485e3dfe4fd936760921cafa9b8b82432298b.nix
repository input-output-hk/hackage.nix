{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "I1M"; version = "0.0.1"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "JoseA.Alonso@gmail.com";
      author = "Jose A. Alonso";
      homepage = "https://github.com/jaalonso/I1M";
      url = "";
      synopsis = "Code for the Haskell course taught at the University od Seville.";
      description = "'En este paquete se encuentra los códigos de las librerías\ndesarrolladas en el curso de\n<https://www.cs.us.es/~jalonso/cursos/i1m Informática>\nde 1º del Grado en Matemáticas de la Universidad de Sevilla.'";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.QuickCheck) (hsPkgs.array) (hsPkgs.base) ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.I1M)
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            ];
          };
        };
      };
    }