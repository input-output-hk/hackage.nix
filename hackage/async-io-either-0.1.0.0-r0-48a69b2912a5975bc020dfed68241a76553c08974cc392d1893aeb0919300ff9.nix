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
      identifier = { name = "async-io-either"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Sean Chalmers";
      maintainer = "schalmers@iseek.com.au";
      author = "Sean Chalmers";
      homepage = "https://github.com/mankyKitty/async-io-either#readme";
      url = "";
      synopsis = "Could be useful";
      description = "A way of running any IO type and capturing any exception, maybe, I think...";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          ];
        buildable = true;
        };
      };
    }