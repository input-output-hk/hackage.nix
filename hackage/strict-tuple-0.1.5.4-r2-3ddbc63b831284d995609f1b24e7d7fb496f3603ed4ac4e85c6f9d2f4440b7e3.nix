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
      identifier = { name = "strict-tuple"; version = "0.1.5.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018-2024, Mitchell Dalvi Rosen";
      maintainer = "Mitchell Dalvi Rosen <mitchellwrosen@gmail.com>";
      author = "Mitchell Dalvi Rosen";
      homepage = "https://github.com/mitchellwrosen/strict-tuple";
      url = "";
      synopsis = "Strict tuples";
      description = "Strict tuples.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."strict-tuple" or (errorHandler.buildDepError "strict-tuple"))
          ];
          buildable = true;
        };
      };
    };
  }