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
      identifier = { name = "setlocale"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2014, Sven Bartscher";
      maintainer = "sven.bartscher@weltraumschlangen.de";
      author = "Sven Bartscher";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings to setlocale";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
    };
  }