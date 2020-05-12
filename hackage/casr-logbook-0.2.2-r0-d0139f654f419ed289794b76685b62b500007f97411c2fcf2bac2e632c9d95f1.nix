{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."casr-logbook-types" or (errorHandler.buildDepError "casr-logbook-types"))
          (hsPkgs."casr-logbook-meta" or (errorHandler.buildDepError "casr-logbook-meta"))
          (hsPkgs."casr-logbook-html" or (errorHandler.buildDepError "casr-logbook-html"))
          (hsPkgs."casr-logbook-meta-html" or (errorHandler.buildDepError "casr-logbook-meta-html"))
          (hsPkgs."casr-logbook-reports" or (errorHandler.buildDepError "casr-logbook-reports"))
          (hsPkgs."casr-logbook-reports-html" or (errorHandler.buildDepError "casr-logbook-reports-html"))
          (hsPkgs."casr-logbook-reports-meta" or (errorHandler.buildDepError "casr-logbook-reports-meta"))
          (hsPkgs."casr-logbook-reports-meta-html" or (errorHandler.buildDepError "casr-logbook-reports-meta-html"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."digit" or (errorHandler.buildDepError "digit"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }