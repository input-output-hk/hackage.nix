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
      specVersion = "1.2";
      identifier = { name = "hommage-ds"; version = "0.0.5"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "dvde@gmx.net";
      author = "Daniel van den Eijkel";
      homepage = "substitut-fuer-feinmotorik/projects/haskellommage";
      url = "";
      synopsis = "DirectSound extension (Windows) for the Hommage sound library";
      description = "This library adds realtime sound playback to the hommage library.\nIt can be used with GHCi.\nIt is very experimental, not very fast\nand supports only playback of Signals (Lists) and Samples (Wav-Files).\nIt contains a simple sequencer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."DirectSound" or (errorHandler.buildDepError "DirectSound"))
          (hsPkgs."hommage" or (errorHandler.buildDepError "hommage"))
          ];
        buildable = true;
        };
      };
    }