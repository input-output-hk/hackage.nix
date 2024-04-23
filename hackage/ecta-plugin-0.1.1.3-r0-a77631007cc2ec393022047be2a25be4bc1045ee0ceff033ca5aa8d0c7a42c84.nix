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
      identifier = { name = "ecta-plugin"; version = "0.1.1.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "mpg@mpg.is";
      author = "Matthías Páll Gissurarson";
      homepage = "";
      url = "";
      synopsis = "Hole-Fit Synthesis using ECTAs";
      description = "A hole-fit plugin for GHC that invokes Hectare (based on ECTAs) to synthesize\nvalid hole-fits.  See <https://github.com/jkoppel/ecta> and\n<https://dl.acm.org/doi/10.1145/3547622> for more details on ECTAs and Hectare!";
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