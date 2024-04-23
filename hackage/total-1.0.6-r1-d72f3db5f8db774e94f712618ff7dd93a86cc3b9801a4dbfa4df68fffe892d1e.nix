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
      identifier = { name = "total"; version = "1.0.6"; };
      license = "BSD-3-Clause";
      copyright = "2015 Gabriella Gonzalez";
      maintainer = "GenuineGabriella@gmail.com";
      author = "Gabriella Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Exhaustive pattern matching using lenses, traversals, and prisms";
      description = "Use this library if you wish to hide your data type's internal\nrepresentation while still providing a way to exhaustively pattern match on\nyour type using exposed lenses, traversals, or prisms.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
        ];
        buildable = true;
      };
    };
  }