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
    flags = { recent-hspec-discover = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "module-munging"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Jason Shipman";
      author = "Jason Shipman";
      homepage = "https://github.com/jship/module-munging#readme";
      url = "";
      synopsis = "Smash together text to make modules.";
      description = "Thin, low-tech wrapper for smashing together raw text to make Haskell modules.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "module-munging-test-suite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."module-munging" or (errorHandler.buildDepError "module-munging"))
            (hsPkgs."string-interpolate" or (errorHandler.buildDepError "string-interpolate"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }