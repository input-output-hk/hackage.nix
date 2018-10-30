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
      specVersion = "1.2";
      identifier = {
        name = "ParserFunction";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Enzo Haussecker <ehaussecker@gmail.com>";
      author = "Enzo Haussecker";
      homepage = "";
      url = "";
      synopsis = "Enzo Haussecker's algorithm for parsing functions.";
      description = "Enzo Haussecker's algorithm for parsing functions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
        ];
      };
    };
  }