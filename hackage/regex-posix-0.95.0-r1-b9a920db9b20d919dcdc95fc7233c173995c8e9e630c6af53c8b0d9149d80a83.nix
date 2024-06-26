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
    flags = { newbase = true; splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "regex-posix"; version = "0.95.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007-2010, Christopher Kuklewicz";
      maintainer = "TextRegexLazy@personal.mightyreason.com";
      author = "Christopher Kuklewicz";
      homepage = "http://sourceforge.net/projects/lazy-regex";
      url = "http://code.haskell.org/regex-posix/";
      synopsis = "Replaces/Enhances Text.Regex";
      description = "The posix regex backend for regex-base";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = if flags.newbase
          then [
            (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ]
          else if flags.splitbase
            then [
              (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."array" or (errorHandler.buildDepError "array"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ]
            else [
              (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
        buildable = true;
      };
    };
  }