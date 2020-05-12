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
      specVersion = "1.10";
      identifier = { name = "bytestring-to-vector"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sven Heyll <sven.heyll@gmail.com>";
      author = "Keegan McAllister <mcallister.keegan@gmail.com>";
      homepage = "https://github.com/sheyll/bytestring-to-vector";
      url = "";
      synopsis = "Convert between ByteString and Vector.Storable without copying";
      description = "This library allows conversion between the types from @Data.ByteString@\n(package @bytestring@) and @Data.Vector.Storable@ (package @vector@) without\ncopying the underlying data.  This is useful, for example, when @ByteString@\nIO produces or consumes vectors of numbers in native byte order.\n\nThe conversion relies on the fact that @ByteString@ and @Vector@ use their\nrespective @ForeignPtr@s in compatible ways.\n\nThis library is a fork of the @spool@ package written by Keegan McAllister.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."byteorder" or (errorHandler.buildDepError "byteorder"))
            (hsPkgs."bytestring-to-vector" or (errorHandler.buildDepError "bytestring-to-vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }