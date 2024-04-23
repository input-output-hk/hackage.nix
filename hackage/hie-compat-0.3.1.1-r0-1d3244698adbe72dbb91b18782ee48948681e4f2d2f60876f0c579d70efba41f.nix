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
    flags = { ghc-lib = false; };
    package = {
      specVersion = "1.22";
      identifier = { name = "hie-compat"; version = "0.3.1.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "zubin.duggal@gmail.com";
      author = "Zubin Duggal";
      homepage = "https://github.com/haskell/haskell-language-server/tree/master/hie-compat#readme";
      url = "";
      synopsis = "HIE files for GHC 8.8 and other HIE file backports";
      description = "Backports for HIE files to GHC 8.8, along with a few other backports\nof HIE file related fixes for ghcide.\nTHIS DOES NOT LET YOU READ HIE FILES WITH MISMATCHED VERSIONS OF GHC";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ] ++ (if flags.ghc-lib && (compiler.isGhc && compiler.version.lt "9")
          then [ (hsPkgs."ghc-lib" or (errorHandler.buildDepError "ghc-lib")) ]
          else [
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-boot" or (errorHandler.buildDepError "ghc-boot"))
          ]);
        buildable = true;
      };
    };
  }