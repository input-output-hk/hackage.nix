{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "g4ip-prover"; version = "2.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "klntsky@gmail.com";
      author = "Josh Acay, Klntsky";
      homepage = "https://github.com/8084/g4ip-prover";
      url = "";
      synopsis = "Theorem prover for intuitionistic propositional logic using G4ip";
      description = "Theorem prover for intuitionistic propositional logic using G4ip";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          ];
        build-tools = [ ((hsPkgs.buildPackages).happy) ];
        };
      exes = {
        "g4ip-prover" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            ];
          build-tools = [ ((hsPkgs.buildPackages).happy) ];
          };
        };
      tests = {
        "test" = { depends = [ (hsPkgs.g4ip-prover) (hsPkgs.base) ]; };
        };
      };
    }