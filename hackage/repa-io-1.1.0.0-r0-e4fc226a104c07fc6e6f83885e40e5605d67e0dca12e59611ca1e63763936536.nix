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
      specVersion = "1.6";
      identifier = { name = "repa-io"; version = "1.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The DPH Team";
      homepage = "http://trac.haskell.org/repa";
      url = "";
      synopsis = "Read and write Repa arrays in various formats.";
      description = "NOTE: You must use the GHC head branch > 6.13.20100309 to get decent performance.\nRead and write Repa arrays in various formats.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dph-prim-par" or (errorHandler.buildDepError "dph-prim-par"))
          (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
          (hsPkgs."repa-bytestring" or (errorHandler.buildDepError "repa-bytestring"))
          (hsPkgs."bmp" or (errorHandler.buildDepError "bmp"))
          ];
        buildable = true;
        };
      };
    }