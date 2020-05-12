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
      identifier = { name = "tokstyle"; version = "0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "iphydf@users.noreply.github.com";
      author = "iphydf";
      homepage = "https://toktok.github.io/tokstyle";
      url = "";
      synopsis = "TokTok C code style checker";
      description = "TokTok C code style checker";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."language-c" or (errorHandler.buildDepError "language-c"))
          ];
        buildable = true;
        };
      exes = {
        "check-c" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tokstyle" or (errorHandler.buildDepError "tokstyle"))
            ];
          buildable = true;
          };
        "check-cimple" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tokstyle" or (errorHandler.buildDepError "tokstyle"))
            ];
          buildable = true;
          };
        };
      };
    }