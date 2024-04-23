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
      specVersion = "1.8";
      identifier = { name = "jort"; version = "1.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "jeanphilippe.bernardy@gmail.com";
      author = "Jean-Philippe Bernardy";
      homepage = "";
      url = "";
      synopsis = "JP's own ray tracer";
      description = "A real-time raytracer in Haskell. No kidding.\n(Vintage: my first Haskell project)";
      buildType = "Simple";
    };
    components = {
      exes = {
        "jort" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          ];
          buildable = true;
        };
      };
    };
  }