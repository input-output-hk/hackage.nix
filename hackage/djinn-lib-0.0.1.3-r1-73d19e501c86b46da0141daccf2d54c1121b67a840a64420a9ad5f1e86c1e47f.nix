{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "djinn-lib";
        version = "0.0.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "trupill@gmail.com";
      author = "Lennart Augustsson";
      homepage = "http://www.augustsson.net/Darcs/Djinn/";
      url = "";
      synopsis = "Generate Haskell code from a type. Library extracted from djinn package.";
      description = "Djinn uses an theorem prover for intuitionistic propositional logic\nto generate a Haskell expression when given a type.\nThis is a library extracted from Djinn sources.";
      buildType = "Simple";
    };
    components = {
      "djinn-lib" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.pretty)
        ];
      };
    };
  }