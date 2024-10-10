{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "I1M"; version = "0.2.2"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "JoseA.Alonso@gmail.com";
      author = "Jose A. Alonso";
      homepage = "https://github.com/jaalonso/I1M";
      url = "";
      synopsis = "Code for the Haskell course taught at the University of Seville.";
      description = "En este paquete se encuentra los códigos de las librerías\ndesarrolladas en el curso de\n<https://www.cs.us.es/~jalonso/cursos/i1m Informatica>\nde 1º del Grado en Matemáticas de la Universidad de Sevilla.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."I1M" or (errorHandler.buildDepError "I1M"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }