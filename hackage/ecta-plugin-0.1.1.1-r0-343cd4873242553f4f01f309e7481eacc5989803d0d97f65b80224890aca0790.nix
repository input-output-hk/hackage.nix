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
      identifier = { name = "ecta-plugin"; version = "0.1.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "mpg@mpg.is";
      author = "Matthías Páll Gissurarson";
      homepage = "";
      url = "";
      synopsis = "Hole-Fit Synthesis using ECTAs";
      description = "A hole-fit plugin for GHC that uses an ECTA to synthesize valid hole-fits.\nSee <https://github.com/jkoppel/ecta> for more details on ECTAs!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ecta" or (errorHandler.buildDepError "ecta"))
          ];
        buildable = true;
        };
      };
    }