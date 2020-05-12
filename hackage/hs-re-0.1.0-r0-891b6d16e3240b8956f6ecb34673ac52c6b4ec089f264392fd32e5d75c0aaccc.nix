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
      identifier = { name = "hs-re"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "m@skahack.com";
      author = "Hiroki Sato";
      homepage = "";
      url = "";
      synopsis = "Easy to use Regex";
      description = "https://github.com/SKAhack/hs-re";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        buildable = true;
        };
      };
    }