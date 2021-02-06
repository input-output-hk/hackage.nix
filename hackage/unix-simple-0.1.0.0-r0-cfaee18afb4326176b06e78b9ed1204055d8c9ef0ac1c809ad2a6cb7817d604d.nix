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
      identifier = { name = "unix-simple"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2021 Ian Denhardt";
      maintainer = "ian@zenhack.net";
      author = "Ian Denhardt";
      homepage = "https://github.com/zenhack/haskell-unix-simple";
      url = "";
      synopsis = "Straightforward bindings to the posix API";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."zenhack-prelude" or (errorHandler.buildDepError "zenhack-prelude"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."zenhack-prelude" or (errorHandler.buildDepError "zenhack-prelude"))
            (hsPkgs."unix-simple" or (errorHandler.buildDepError "unix-simple"))
            ];
          buildable = true;
          };
        };
      };
    }