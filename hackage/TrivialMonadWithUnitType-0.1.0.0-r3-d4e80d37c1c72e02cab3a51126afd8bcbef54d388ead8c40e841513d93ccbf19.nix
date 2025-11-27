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
      specVersion = "2.4";
      identifier = { name = "TrivialMonadWithUnitType"; version = "0.1.0.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "retablies@hotmail.com";
      author = "Alexis Soutient";
      homepage = "";
      url = "";
      synopsis = "Trivial monad with Unit type";
      description = "In a theoretical sense, this code describes a monadic group for producing a singleton or a single point, which is a compressible space or set because it can be continuously deformed to zero. It is not a free group with one generator, because there is no generator in this group. It is a free group with zero generators (the trivial group) for each object.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }