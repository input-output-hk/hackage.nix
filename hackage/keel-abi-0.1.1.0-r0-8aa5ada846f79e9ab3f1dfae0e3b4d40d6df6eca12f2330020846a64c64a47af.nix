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
      specVersion = "3.0";
      identifier = { name = "keel-abi"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Zhe Zhang";
      author = "Zhe Zhang";
      homepage = "https://github.com/skymanbp/keel";
      url = "";
      synopsis = "Arrow C Data/Stream Interface and DLPack, no cbits";
      description = "Hand-written @Storable@ bindings for the two frozen C ABIs of the\ndata-science world: the Apache Arrow C Data \\/ C Stream Interface and\nDLPack's @DLManagedTensorVersioned@ — import and export directions.\n.\nThe shipped library contains no C sources and needs no C toolchain\nbeyond what GHC itself bundles: the structs are frozen ABIs, so their\nlayouts are written out by hand for 64-bit pointers — the library\nrefuses to build on any other architecture — and a /test-suite-only/\nC file of @_Static_assert(offsetof(...))@ checks fails CI if the\nhand layouts ever disagree with a real C compiler.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = if !(system.isX86_64 || system.isAarch64)
          then false
          else true;
      };
      tests = {
        "keel-abi-layout" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."keel-abi" or (errorHandler.buildDepError "keel-abi"))
          ];
          buildable = true;
        };
        "keel-abi-managed" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."keel-abi" or (errorHandler.buildDepError "keel-abi"))
          ];
          buildable = true;
        };
        "keel-abi-pyarrow" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."keel-abi" or (errorHandler.buildDepError "keel-abi"))
            (hsPkgs."keel-dyn" or (errorHandler.buildDepError "keel-dyn"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = true;
        };
        "keel-abi-dlpack" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."keel-abi" or (errorHandler.buildDepError "keel-abi"))
            (hsPkgs."keel-dyn" or (errorHandler.buildDepError "keel-dyn"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = true;
        };
      };
    };
  }