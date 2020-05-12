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
    flags = { use-backport = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "bytestring-short"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Don Stewart          2005-2009,\n(c) Duncan Coutts        2006-2013,\n(c) David Roundy         2003-2005,\n(c) Kei Hibino           2015.";
      maintainer = "Kei Hibino <ex8k.hibino@gmail.com>";
      author = "Kei Hibino";
      homepage = "";
      url = "";
      synopsis = "Backport copy of ShortByteString";
      description = "Backport copy of ShortByteString";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.use-backport
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
        buildable = true;
        };
      tests = {
        "prop-compiled" = {
          depends = if flags.use-backport
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."bytestring-short" or (errorHandler.buildDepError "bytestring-short"))
              (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
              (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
              ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }