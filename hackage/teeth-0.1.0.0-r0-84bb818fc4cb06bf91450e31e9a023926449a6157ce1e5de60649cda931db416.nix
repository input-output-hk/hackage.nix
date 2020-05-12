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
      identifier = { name = "teeth"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "copyright © 2015 Joe Hermaszewski";
      maintainer = "haskell@monoid.al";
      author = "Joe Hermaszewski";
      homepage = "https://github.com/expipiplus1/teeth";
      url = "";
      synopsis = "Dental data types";
      description = "Some data types useful for describing the hard pointy things inside your mouth";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }