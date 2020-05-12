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
      specVersion = "1.10.0";
      identifier = { name = "type-hint"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2014 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      maintainer = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      homepage = "https://github.com/mvv/type-hint";
      url = "";
      synopsis = "Guide type inference with proxy values";
      description = "This package provides 'Proxy' values for various types from the @base@\nlibrary and functions to use these values as hints for type inference.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.7")) (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"));
        buildable = true;
        };
      };
    }