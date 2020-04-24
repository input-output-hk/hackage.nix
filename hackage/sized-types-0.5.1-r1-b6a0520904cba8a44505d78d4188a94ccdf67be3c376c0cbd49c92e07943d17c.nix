{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { all = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "sized-types"; version = "0.5.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2013 The University of Kansas";
      maintainer = "Andy Gill <andygill@ku.edu>";
      author = "Andy Gill";
      homepage = "http://www.ittc.ku.edu/csdl/fpg/Tools";
      url = "";
      synopsis = "Sized types in Haskell using the GHC Nat kind.";
      description = "Providing matrixes, sparse matrixes, and signed and unsigned bit vectors, using GHC Nat kind.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
          ];
        buildable = true;
        };
      exes = {
        "sized-types-example1" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
            (hsPkgs."sized-types" or ((hsPkgs.pkgs-errors).buildDepError "sized-types"))
            ];
          buildable = if flags.all then true else false;
          };
        };
      tests = {
        "sized-types-test1" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."sized-types" or ((hsPkgs.pkgs-errors).buildDepError "sized-types"))
            ];
          buildable = if flags.all then true else false;
          };
        };
      };
    }