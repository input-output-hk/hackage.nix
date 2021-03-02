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
      specVersion = "1.22";
      identifier = { name = "intro-prelude"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2016 Daniel Mendler";
      maintainer = "Daniel Mendler <mail@daniel-mendler.de>";
      author = "Daniel Mendler <mail@daniel-mendler.de>";
      homepage = "https://github.com/minad/intro-prelude#readme";
      url = "";
      synopsis = "Intro reexported as Prelude";
      description = "Intro reexported as Prelude. Replace base with base-noprelude and intro-prelude in your build-depends.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."intro" or (errorHandler.buildDepError "intro")) ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."intro" or (errorHandler.buildDepError "intro"))
            (hsPkgs."intro-prelude" or (errorHandler.buildDepError "intro-prelude"))
            ];
          buildable = true;
          };
        };
      };
    }