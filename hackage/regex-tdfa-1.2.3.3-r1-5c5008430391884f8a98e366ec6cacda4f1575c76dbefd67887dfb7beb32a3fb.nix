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
    flags = { devel = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "regex-tdfa"; version = "1.2.3.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007, Christopher Kuklewicz";
      maintainer = "Artyom <yom@artyom.me>, Christopher Kuklewicz <TextRegexLazy@personal.mightyreason.com>";
      author = "Christopher Kuklewicz";
      homepage = "https://github.com/ChrisKuklewicz/regex-tdfa";
      url = "";
      synopsis = "Replaces/Enhances Text.Regex";
      description = "A new all Haskell \"tagged\" DFA regex engine, inspired by libtre";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
          ] ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0")) [
          (hsPkgs."fail" or (errorHandler.buildDepError "fail"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          ];
        buildable = true;
        };
      tests = {
        "regex-tdfa-unittest" = {
          depends = [
            (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."fail" or (errorHandler.buildDepError "fail"));
          buildable = true;
          };
        };
      };
    }