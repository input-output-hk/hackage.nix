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
      specVersion = "3.0";
      identifier = { name = "propeller"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2024 Michael Szvetits";
      maintainer = "typedbyte@qualified.name";
      author = "Michael Szvetits";
      homepage = "https://github.com/typedbyte/propeller#readme";
      url = "";
      synopsis = "A Propagator Library";
      description = "Please see the README on GitHub at <https://github.com/typedbyte/propeller#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      tests = {
        "unification" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."propeller" or (errorHandler.buildDepError "propeller"))
          ];
          buildable = true;
        };
      };
    };
  }