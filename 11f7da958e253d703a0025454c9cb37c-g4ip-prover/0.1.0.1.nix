{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "g4ip-prover";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "klntsky@gmail.com";
      author = "Josh Acay, Klntsky";
      homepage = "";
      url = "";
      synopsis = "Theorem prover for intuitionistic propositional logic using G4ip";
      description = "Implementation of a theorem prover for intuitionistic propositional logic using G4ip";
      buildType = "Simple";
    };
    components = {
      exes = {
        "g4ip-prover" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.directory)
            (hsPkgs.system-filepath)
          ];
        };
      };
    };
  }