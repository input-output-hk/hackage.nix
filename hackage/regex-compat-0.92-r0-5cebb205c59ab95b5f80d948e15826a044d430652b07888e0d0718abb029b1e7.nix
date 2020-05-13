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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "regex-compat"; version = "0.92"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2006, Christopher Kuklewicz";
      maintainer = "TextRegexLazy@personal.mightyreason.com";
      author = "Christopher Kuklewicz";
      homepage = "http://sourceforge.net/projects/lazy-regex";
      url = "http://darcs.haskell.org/packages/regex-unstable/regex-compat/";
      synopsis = "Replaces/Enhances Text.Regex";
      description = "One module layer over regex-posix to replace Text.Regex";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            ];
        buildable = true;
        };
      };
    }