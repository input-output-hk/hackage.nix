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
      identifier = { name = "engineering-units"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tom Hawkins  <tomahawkins@gmail.com>";
      author = "Tom Hawkins  <tomahawkins@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A numeric type that automates engineering units.";
      description = "A numeric type that automates engineering units.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }