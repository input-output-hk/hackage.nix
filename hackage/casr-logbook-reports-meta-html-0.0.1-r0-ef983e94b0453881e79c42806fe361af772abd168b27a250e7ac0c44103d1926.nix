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
      identifier = {
        name = "casr-logbook-reports-meta-html";
        version = "0.0.1";
        };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (C) 2016 Tony Morris";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "https://github.com/tonymorris/casr-logbook-reports-meta-html";
      url = "";
      synopsis = "HTML output for reports on meta-information about entries in a CASR 61.345 logbook";
      description = "<<https://i.imgur.com/p6LT40r.png>>\n\nHTML output for reports on meta-information about entries in a CASR 61.345 logbook\n\n<<https://i.imgur.com/Lfhcmtg.png>>";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."casr-logbook" or (errorHandler.buildDepError "casr-logbook"))
          (hsPkgs."casr-logbook-meta" or (errorHandler.buildDepError "casr-logbook-meta"))
          (hsPkgs."casr-logbook-meta-html" or (errorHandler.buildDepError "casr-logbook-meta-html"))
          (hsPkgs."casr-logbook-reports" or (errorHandler.buildDepError "casr-logbook-reports"))
          (hsPkgs."casr-logbook-reports-meta" or (errorHandler.buildDepError "casr-logbook-reports-meta"))
          (hsPkgs."casr-logbook-reports-html" or (errorHandler.buildDepError "casr-logbook-reports-html"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
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