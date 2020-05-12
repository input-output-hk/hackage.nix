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
      identifier = { name = "base32-bytestring"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Sam Truzjan";
      maintainer = "Sam Truzjan <pxqr.sta@gmail.com>";
      author = "Sam Truzjan";
      homepage = "https://github.com/cobit/base32-bytestring";
      url = "";
      synopsis = "Fast base32 and base32hex codec for ByteStrings";
      description = "base32 and base32hex codec according to RFC4648\n<http://tools.ietf.org/html/rfc4648>\n\nThe package API is similar to base64-bytestring.\n\n[/Release notes/]\n\n* /0.1.0.0:/ Initial version.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cpu" or (errorHandler.buildDepError "cpu"))
          (hsPkgs."bits-extras" or (errorHandler.buildDepError "bits-extras"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base32-bytestring" or (errorHandler.buildDepError "base32-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base32-bytestring" or (errorHandler.buildDepError "base32-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }