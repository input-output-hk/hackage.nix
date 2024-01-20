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
      identifier = { name = "file-uri"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Julian Ospald 2024";
      maintainer = "hasufell@posteo.de";
      author = "Julian Ospald";
      homepage = "";
      url = "";
      synopsis = "File URI parsing";
      description = "Parses file:///foo/bar URIs based on RFC 8089, including windows filepaths.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          ];
        buildable = true;
        };
      tests = {
        "file-uri-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."file-uri" or (errorHandler.buildDepError "file-uri"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "file-uri-benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."file-uri" or (errorHandler.buildDepError "file-uri"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            ];
          buildable = true;
          };
        };
      };
    }