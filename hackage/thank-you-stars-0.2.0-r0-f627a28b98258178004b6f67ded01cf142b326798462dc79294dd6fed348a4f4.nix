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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "thank-you-stars"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2017 TAKAHASHI Yuto";
      maintainer = "TAKAHASHI Yuto <ytaka23dev@gmail.com>";
      author = "TAKAHASHI Yuto <ytaka23dev@gmail.com>";
      homepage = "https://github.com/y-taka-23/thank-you-stars#readme";
      url = "";
      synopsis = "Give your dependencies stars on GitHub!";
      description = "A tool for starring GitHub repositories. It detects dependent libraries\nwhich are hosted on GitHub via .cabal files,\nand stars the repositories all at once.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hackage-db" or (errorHandler.buildDepError "hackage-db"))
          (hsPkgs."req" or (errorHandler.buildDepError "req"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "thank-you-stars" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."thank-you-stars" or (errorHandler.buildDepError "thank-you-stars"))
            ];
          buildable = true;
          };
        };
      tests = {
        "thank-you-stars-spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."thank-you-stars" or (errorHandler.buildDepError "thank-you-stars"))
            ];
          buildable = true;
          };
        };
      };
    }