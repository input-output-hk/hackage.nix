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
      identifier = {
        name = "ixset-typed-hashable-instance";
        version = "0.1.0.2";
        };
      license = "MIT";
      copyright = "2020 Daniel Firth";
      maintainer = "dan.firth@homotopic.tech";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "Hashable instance for ixset-typed.";
      description = "Please see the README on GitHub at <https://github.com/githubuser/ixset-typed-hashable-instance#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."ixset-typed" or (errorHandler.buildDepError "ixset-typed"))
          ];
        buildable = true;
        };
      };
    }