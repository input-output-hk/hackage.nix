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
      identifier = { name = "regex-pcre"; version = "0.94.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2006, Christopher Kuklewicz";
      maintainer = "TextRegexLazy@personal.mightyreason.com";
      author = "Christopher Kuklewicz";
      homepage = "http://sourceforge.net/projects/lazy-regex";
      url = "http://darcs.haskell.org/packages/regex-unstable/regex-pcre/";
      synopsis = "Replaces/Enhances Text.Regex";
      description = "The PCRE backend to accompany regex-base, see www.pcre.org";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.newbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ]
          else if flags.splitbase
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
              (hsPkgs."array" or (errorHandler.buildDepError "array"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
              ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
              ];
        libs = [ (pkgs."pcre" or (errorHandler.sysDepError "pcre")) ];
        buildable = true;
        };
      };
    }