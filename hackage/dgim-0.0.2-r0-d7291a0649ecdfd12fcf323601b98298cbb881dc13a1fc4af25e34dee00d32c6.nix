{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dgim"; version = "0.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "musically.ut@gmail.com";
      author = "Utkarsh Upadhyay";
      homepage = "https://github.com/musically-ut/haskell-dgim";
      url = "";
      synopsis = "Implementation of DGIM algorithm";
      description = "A basic implementation of the DGIM algorithm for counting the occurrence of certain elements in a fixed length prefix of a stream.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "dgim-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."dgim" or ((hsPkgs.pkgs-errors).buildDepError "dgim"))
            ];
          buildable = true;
          };
        };
      };
    }