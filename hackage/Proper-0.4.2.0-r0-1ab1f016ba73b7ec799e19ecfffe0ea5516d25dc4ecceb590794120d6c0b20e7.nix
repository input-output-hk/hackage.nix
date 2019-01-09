{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "Proper"; version = "0.4.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Dillon Huff";
      author = "Dillon Huff";
      homepage = "https://github.com/dillonhuff/Proper";
      url = "";
      synopsis = "An implementation of propositional logic in Haskell";
      description = "Proper is both an executable theorem prover for Propositional logic\nand a library for incorporating propositional logic into other Haskell\nprograms. See the github repo for examples of theorem files for the\nexecutable.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.containers) ]; };
      exes = {
        "Proper" = {
          depends = [ (hsPkgs.base) (hsPkgs.containers) (hsPkgs.parsec) ];
          };
        "Proper-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.containers)
            (hsPkgs.parsec)
            ];
          };
        };
      };
    }