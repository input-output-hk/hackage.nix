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
      identifier = { name = "acme-stringly-typed"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2014 Sven Struett";
      maintainer = "Sven.Struett@gmx.de";
      author = "Sven Struett";
      homepage = "";
      url = "";
      synopsis = "Stringly Typed Programming";
      description = "All the benefits of stringly typed programming at all of the costs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }