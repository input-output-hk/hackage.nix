{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "AlgorithmW"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "martin@grabmueller.de";
      author = "Martin Grabmueller";
      homepage = "https://github.com/mgrabmueller/AlgorithmW";
      url = "";
      synopsis = "Example implementation of Algorithm W for Hindley-Milner\ntype inference.";
      description = "Complete implementation of the classic\nalgorithm W for Hindley-Milner polymorphic\ntype inference in Haskell.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "AlgorithmW" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            ];
          buildable = true;
          };
        };
      };
    }