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
      identifier = { name = "pipes-vector"; version = "0.6.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Ben Gamari";
      maintainer = "Ben Gamari <bgamari.foss@gmail.com>";
      author = "Ben Gamari";
      homepage = "";
      url = "";
      synopsis = "Various proxies for streaming data into vectors";
      description = "Proxies for streaming data into vectors.        ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."monad-primitive" or (errorHandler.buildDepError "monad-primitive"))
          ];
        buildable = true;
        };
      };
    }