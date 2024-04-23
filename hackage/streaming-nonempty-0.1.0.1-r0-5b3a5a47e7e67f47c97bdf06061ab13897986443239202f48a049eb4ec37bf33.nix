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
      specVersion = "1.12";
      identifier = { name = "streaming-nonempty"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2021 Paolo Veronelli";
      maintainer = "paolo.veronelli@gmail.com";
      author = "Paolo Veronelli";
      homepage = "";
      url = "";
      synopsis = "Add support for non empty streams to Streaming lib";
      description = "Please see the README on GitHub at <https://gitlab.com/paolo.veronelli/streaming-nonempty/-/blob/master/README.md>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
        ];
        buildable = true;
      };
      tests = {
        "streaming-nonempty-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
            (hsPkgs."streaming-nonempty" or (errorHandler.buildDepError "streaming-nonempty"))
          ];
          buildable = true;
        };
      };
    };
  }