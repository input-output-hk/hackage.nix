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
      identifier = { name = "vulkan"; version = "1.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Joe Hermaszewski";
      maintainer = "live.long.and.prosper@monoid.al";
      author = "Joe Hermaszewski";
      homepage = "http://github.com/expipiplus1/vulkan#readme";
      url = "";
      synopsis = "Bindings to the Vulkan graphics API.";
      description = "Please see readme.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
          ];
        buildable = true;
        };
      };
    }