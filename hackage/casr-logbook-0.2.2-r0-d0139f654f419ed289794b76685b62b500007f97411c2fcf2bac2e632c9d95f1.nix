{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "casr-logbook"; version = "0.2.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (C) 2016 Tony Morris";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "https://github.com/tonymorris/casr-logbook";
      url = "";
      synopsis = "CASR 61.345 Pilot Personal Logbook";
      description = "<<https://i.imgur.com/p6LT40r.png>>\n\nCASR 61.345 Pilot Personal Logbook\n\n<<https://i.imgur.com/Lfhcmtg.png>>";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."casr-logbook-types" or ((hsPkgs.pkgs-errors).buildDepError "casr-logbook-types"))
          (hsPkgs."casr-logbook-meta" or ((hsPkgs.pkgs-errors).buildDepError "casr-logbook-meta"))
          (hsPkgs."casr-logbook-html" or ((hsPkgs.pkgs-errors).buildDepError "casr-logbook-html"))
          (hsPkgs."casr-logbook-meta-html" or ((hsPkgs.pkgs-errors).buildDepError "casr-logbook-meta-html"))
          (hsPkgs."casr-logbook-reports" or ((hsPkgs.pkgs-errors).buildDepError "casr-logbook-reports"))
          (hsPkgs."casr-logbook-reports-html" or ((hsPkgs.pkgs-errors).buildDepError "casr-logbook-reports-html"))
          (hsPkgs."casr-logbook-reports-meta" or ((hsPkgs.pkgs-errors).buildDepError "casr-logbook-reports-meta"))
          (hsPkgs."casr-logbook-reports-meta-html" or ((hsPkgs.pkgs-errors).buildDepError "casr-logbook-reports-meta-html"))
          (hsPkgs."lucid" or ((hsPkgs.pkgs-errors).buildDepError "lucid"))
          (hsPkgs."digit" or ((hsPkgs.pkgs-errors).buildDepError "digit"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }