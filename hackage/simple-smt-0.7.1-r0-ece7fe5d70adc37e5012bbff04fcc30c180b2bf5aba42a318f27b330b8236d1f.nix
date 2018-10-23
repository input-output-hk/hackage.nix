{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "simple-smt";
        version = "0.7.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "iavor.diatchki@gmail.com";
      author = "Iavor S. Diatchki";
      homepage = "";
      url = "";
      synopsis = "A simple way to interact with an SMT solver process.";
      description = "A simple way to interact with an SMT solver process.";
      buildType = "Simple";
    };
    components = {
      "simple-smt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.process)
        ];
      };
    };
  }