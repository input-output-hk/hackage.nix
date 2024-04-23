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
      identifier = { name = "small-bytearray-builder"; version = "0.3.4.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/byteverse/small-bytearray-builder-compat";
      url = "";
      synopsis = "Serialize to bytes";
      description = "Compatibility shim for `bytebuild`. This reexports modules\nunder then `Data.ByteArray` namespace.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
          (hsPkgs."bytebuild" or (errorHandler.buildDepError "bytebuild"))
        ];
        buildable = true;
      };
    };
  }