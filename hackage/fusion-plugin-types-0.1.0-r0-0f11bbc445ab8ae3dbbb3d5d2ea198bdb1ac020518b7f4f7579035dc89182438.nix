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
      specVersion = "2.2";
      identifier = { name = "fusion-plugin-types"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2020 Composewell Technologies";
      maintainer = "pranaysashank@composewell.com";
      author = "Pranay Sashank";
      homepage = "https://github.com/composewell/fusion-plugin-types";
      url = "";
      synopsis = "Types for the fusion-plugin package.";
      description = "GHC package that provides types that when used in a package can be identified by the <https://hackage.haskell.org/package/fusion-plugin fusion-plugin> package to perform any extra optimizations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }