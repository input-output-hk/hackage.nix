{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pitchtrack"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "(c) 2015 Lorenzo Tabacchini";
      maintainer = "lortabac@gmx.com";
      author = "Lorenzo Tabacchini";
      homepage = "";
      url = "";
      synopsis = "Pitch tracking library";
      description = "Pitch tracking library, based on <http://www.schmittmachine.com/dywapitchtrack.html dywapitchtrack>.\n\nSee the \"PitchTrack.Track\" module for an easy, \"ready to use\" interface,\nor \"PitchTrack.Pipes\" for Pipes-based components, if you need more flexibility.\n\nNote that because all parameters are hard-coded into the C library,\nyou are limited to the following audio configuration:\n\n* raw (headerless) format\n\n* a sampling rate of 44100Hz,\n\n* a sample size of @sizeof(double)@\n\n* floating-point encoding\n\n* one channel (mono)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."dywapitchtrack" or ((hsPkgs.pkgs-errors).buildDepError "dywapitchtrack"))
          (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
          (hsPkgs."pipes-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "pipes-bytestring"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."dywapitchtrack" or ((hsPkgs.pkgs-errors).buildDepError "dywapitchtrack"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
            (hsPkgs."pipes-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "pipes-bytestring"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }