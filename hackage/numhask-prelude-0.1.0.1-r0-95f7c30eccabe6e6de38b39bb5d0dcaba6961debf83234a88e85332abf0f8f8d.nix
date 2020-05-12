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
      specVersion = "1.18";
      identifier = { name = "numhask-prelude"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Tony Day";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/numhask#readme";
      url = "";
      synopsis = "A numeric prelude";
      description = "A numeric prelude, combining protolude and numhask.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
          (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."numhask-prelude" or (errorHandler.buildDepError "numhask-prelude"))
            ];
          buildable = true;
          };
        };
      };
    }