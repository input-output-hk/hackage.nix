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
      identifier = { name = "regex-pcre-builtin"; version = "0.94.5.8.8.35"; };
      license = "BSD-3-Clause";
      copyright = "See LICENSE file";
      maintainer = "audreyt@audreyt.org";
      author = "Audrey Tang";
      homepage = "http://hackage.haskell.org/package/regex-pcre";
      url = "http://code.haskell.org/regex-pcre/";
      synopsis = "Replaces/Enhances Text.Regex";
      description = "The PCRE backend to accompany regex-base, with bundled code from www.pcre.org";
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
        buildable = true;
        };
      };
    }