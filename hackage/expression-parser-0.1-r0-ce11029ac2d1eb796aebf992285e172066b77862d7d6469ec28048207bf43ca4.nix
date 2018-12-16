{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "expression-parser";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sebastiaan Visser <haskell@fvisser.nl>";
      author = "Daan Leijen, Paolo Martini";
      homepage = "";
      url = "";
      synopsis = "Generalization of parsec's expression parser.";
      description = "Generalization of parsec's expression parser.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }