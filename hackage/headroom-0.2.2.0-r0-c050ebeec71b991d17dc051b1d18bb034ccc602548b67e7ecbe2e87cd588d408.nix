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
      specVersion = "2.2";
      identifier = { name = "headroom"; version = "0.2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2019-2020 Vaclav Svejcar";
      maintainer = "vaclav.svejcar@gmail.com";
      author = "Vaclav Svejcar";
      homepage = "https://github.com/vaclavsvejcar/headroom";
      url = "";
      synopsis = "License Header Manager";
      description = "Would you like to have nice, up-to-date license/copyright headers in your source code files but hate to manage them by hand? Then Headroom is the right tool for you! Now you can define your license header as Mustache template, put all the variables (such as author's name, year, etc.) into the YAML config file and Headroom will take care to add such license headers to all your source code files.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."mustache" or (errorHandler.buildDepError "mustache"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."pcre-light" or (errorHandler.buildDepError "pcre-light"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
        buildable = true;
        };
      exes = {
        "headroom" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."headroom" or (errorHandler.buildDepError "headroom"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            ];
          buildable = true;
          };
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            ];
          buildable = true;
          };
        "spec" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."headroom" or (errorHandler.buildDepError "headroom"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pcre-light" or (errorHandler.buildDepError "pcre-light"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            ];
          buildable = true;
          };
        };
      };
    }