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
    flags = { build-samples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "lens-regex"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015 Takahiro HIMURA";
      maintainer = "Takahiro HIMURA <taka@himura.jp>";
      author = "Takahiro HIMURA";
      homepage = "https://github.com/himura/lens-regex";
      url = "";
      synopsis = "Lens powered regular expression";
      description = "lens interface for regex-base. Please see the README on Github at <https://github.com/himura/lens-regex#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      exes = {
        "sample" = {
          depends = pkgs.lib.optionals (!!flags.build-samples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."lens-regex" or (errorHandler.buildDepError "lens-regex"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          ];
          buildable = if !flags.build-samples then false else true;
        };
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          ];
          buildable = true;
        };
      };
    };
  }