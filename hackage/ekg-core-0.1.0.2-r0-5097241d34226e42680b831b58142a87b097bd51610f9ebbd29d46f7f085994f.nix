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
      identifier = { name = "ekg-core"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "johan.tibell@gmail.com";
      author = "Johan Tibell";
      homepage = "https://github.com/tibbe/ekg-core";
      url = "";
      synopsis = "Tracking of system metrics";
      description = "This library lets you defined and track system metrics.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      benchmarks = {
        "counter" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ekg-core" or (errorHandler.buildDepError "ekg-core"))
            ];
          buildable = true;
          };
        "distribution" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ekg-core" or (errorHandler.buildDepError "ekg-core"))
            ];
          buildable = true;
          };
        };
      };
    }