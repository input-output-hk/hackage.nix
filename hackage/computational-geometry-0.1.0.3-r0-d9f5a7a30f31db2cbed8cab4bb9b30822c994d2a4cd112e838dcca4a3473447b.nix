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
      specVersion = "1.18";
      identifier = { name = "computational-geometry"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Maksymilian.Owsianny@gmail.com";
      author = "Maksymilian Owsianny";
      homepage = "";
      url = "";
      synopsis = "Collection of algorithms in Computational Geometry.";
      description = "Collection of algorithms in Computational Geometry.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."lens-family-core" or (errorHandler.buildDepError "lens-family-core"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          ];
        buildable = true;
        };
      };
    }