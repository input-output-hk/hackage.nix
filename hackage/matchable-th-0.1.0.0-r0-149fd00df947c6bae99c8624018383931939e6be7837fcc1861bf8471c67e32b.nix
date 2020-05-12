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
      identifier = { name = "matchable-th"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "viercc@gmail.com";
      author = "Koji Miyazato";
      homepage = "";
      url = "";
      synopsis = "Generates Matchable instances using TemplateHaskell";
      description = "This package provides TemplateHaskell function to generate\ninstances of @Matchable@ and @Bimatchable@ type classes,\nwhich are from \"matchable\" package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."th-abstraction" or (errorHandler.buildDepError "th-abstraction"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."matchable" or (errorHandler.buildDepError "matchable"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-abstraction" or (errorHandler.buildDepError "th-abstraction"))
          ];
        buildable = true;
        };
      tests = {
        "th-examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."matchable" or (errorHandler.buildDepError "matchable"))
            (hsPkgs."matchable-th" or (errorHandler.buildDepError "matchable-th"))
            ];
          buildable = true;
          };
        };
      };
    }