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
      identifier = { name = "vector-space-points"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011-2012 Brent Yorgey";
      maintainer = "byorgey@cis.upenn.edu";
      author = "Brent Yorgey";
      homepage = "";
      url = "";
      synopsis = "A type for points, as distinct from vectors.";
      description = "A type for points, as distinct from vectors, built on top\nof Data.AffineSpace.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          ];
        buildable = true;
        };
      };
    }