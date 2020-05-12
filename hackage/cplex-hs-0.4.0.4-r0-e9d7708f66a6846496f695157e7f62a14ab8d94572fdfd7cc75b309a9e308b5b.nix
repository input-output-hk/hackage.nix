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
      specVersion = "1.24";
      identifier = { name = "cplex-hs"; version = "0.4.0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) Greg Horn 2012-2013, Stefan Jacholke 2016";
      maintainer = "Stefan Jacholke <stefanj@encrunch.com>";
      author = "Greg Horn, Stefan Jacholke";
      homepage = "https://github.com/stefan-j/cplex-haskell";
      url = "";
      synopsis = "high-level CPLEX interface";
      description = "High level interface to CPLEX";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        libs = (pkgs.lib).optionals (system.isLinux) [
          (pkgs."cplex" or (errorHandler.sysDepError "cplex"))
          (pkgs."m" or (errorHandler.sysDepError "m"))
          (pkgs."pthread" or (errorHandler.sysDepError "pthread"))
          ];
        buildable = true;
        };
      };
    }