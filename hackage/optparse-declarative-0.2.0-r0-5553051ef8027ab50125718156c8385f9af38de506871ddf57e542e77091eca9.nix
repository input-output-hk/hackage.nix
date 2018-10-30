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
      specVersion = "1.10";
      identifier = {
        name = "optparse-declarative";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "(c) Hideyuki Tanaka 2015";
      maintainer = "tanaka.hideyuki@gmail.com";
      author = "Hideyuki Tanaka";
      homepage = "https://github.com/tanakh/optparse-declarative";
      url = "";
      synopsis = "Declarative command line option parser";
      description = "Declarative and easy to use command line option parser";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.monad-logger)
          (hsPkgs.bytestring)
          (hsPkgs.fast-logger)
        ];
      };
    };
  }