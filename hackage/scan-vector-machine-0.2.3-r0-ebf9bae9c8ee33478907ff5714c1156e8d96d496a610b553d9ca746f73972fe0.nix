{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "scan-vector-machine"; version = "0.2.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Megacz <megacz@cs.berkeley.edu>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "An implementation of the Scan Vector Machine instruction set in Haskell";
      description = "An implementation of the Scan Vector Machine instruction set in Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskell2010" or ((hsPkgs.pkgs-errors).buildDepError "haskell2010"))
          (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."dph-seq" or ((hsPkgs.pkgs-errors).buildDepError "dph-seq"))
          (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
          ];
        buildable = true;
        };
      tests = {
        "Test" = {
          depends = [
            (hsPkgs."haskell2010" or ((hsPkgs.pkgs-errors).buildDepError "haskell2010"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            ];
          buildable = true;
          };
        };
      };
    }