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
      identifier = { name = "sha1"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2020 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/byteverse/sha1";
      url = "";
      synopsis = "SHA-1 Hash";
      description = "This library is a copy of cryptohash-sha1 that works on GC-managed\nbyte arrays instead of ByteString. The C code is a copied from\nthat library. If you find an issue with the C code, you should\nopen an issue on cryptohash-sha1.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."bytebuild" or (errorHandler.buildDepError "bytebuild"))
          (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sha1" or (errorHandler.buildDepError "sha1"))
            (hsPkgs."natural-arithmetic" or (errorHandler.buildDepError "natural-arithmetic"))
            (hsPkgs."small-bytearray-builder" or (errorHandler.buildDepError "small-bytearray-builder"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
            ];
          buildable = true;
          };
        };
      };
    }