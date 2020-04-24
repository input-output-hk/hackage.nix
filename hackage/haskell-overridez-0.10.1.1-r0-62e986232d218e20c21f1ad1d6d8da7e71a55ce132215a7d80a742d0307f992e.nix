{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "haskell-overridez"; version = "0.10.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tim.emiola@gmail.com";
      author = "Tim Emiola";
      homepage = "";
      url = "";
      synopsis = "Manage nix overrides for haskell packages";
      description = "A tool to simplify the use of nix overrides during haskell development";
      buildType = "Simple";
      };
    components = {
      exes = {
        "haskell-overridez" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."aeson-casing" or ((hsPkgs.pkgs-errors).buildDepError "aeson-casing"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."foldl" or ((hsPkgs.pkgs-errors).buildDepError "foldl"))
            (hsPkgs."managed" or ((hsPkgs.pkgs-errors).buildDepError "managed"))
            (hsPkgs."neat-interpolation" or ((hsPkgs.pkgs-errors).buildDepError "neat-interpolation"))
            (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."system-fileio" or ((hsPkgs.pkgs-errors).buildDepError "system-fileio"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."turtle" or ((hsPkgs.pkgs-errors).buildDepError "turtle"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            ];
          buildable = true;
          };
        };
      };
    }