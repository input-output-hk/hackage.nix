{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "wavy"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013-2014 Robert Massaioli <robertmassaioli@gmail.com>";
      maintainer = "Robert Massaioli <robertmassaioli@gmail.com>";
      author = "Robert Massaioli <robertmassaioli@gmail.com>";
      homepage = "http://bitbucket.org/robertmassaioli/wavy";
      url = "";
      synopsis = "Process WAVE files in Haskell.";
      description = "Wavy was designed to be a fast and efficient method of extracting and writing PCM\ndata to and from WAV files. It is here to help you make fast use of Audio\ndata in your Haskell programs and thus encourage many more audio projects in Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."riff" or ((hsPkgs.pkgs-errors).buildDepError "riff"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "wave-identity" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
            (hsPkgs."wavy" or ((hsPkgs.pkgs-errors).buildDepError "wavy"))
            ];
          buildable = true;
          };
        "wave-info" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."wavy" or ((hsPkgs.pkgs-errors).buildDepError "wavy"))
            ];
          buildable = true;
          };
        "wave-split" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."wavy" or ((hsPkgs.pkgs-errors).buildDepError "wavy"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = true;
          };
        "wave-generate-sine" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."wavy" or ((hsPkgs.pkgs-errors).buildDepError "wavy"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }