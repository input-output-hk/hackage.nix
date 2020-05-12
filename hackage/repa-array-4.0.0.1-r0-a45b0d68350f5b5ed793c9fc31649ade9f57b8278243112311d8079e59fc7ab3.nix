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
      identifier = { name = "repa-array"; version = "4.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The Repa Development Team";
      homepage = "http://repa.ouroborus.net";
      url = "";
      synopsis = "Bulk array representations and operators.";
      description = "NOTE: This is an ALPHA version of Repa 4. The API is not yet complete with\nrespect to Repa 3. Some important functions are still missing, and the docs\nmay not be up-to-date.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."double-conversion" or (errorHandler.buildDepError "double-conversion"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."repa-eval" or (errorHandler.buildDepError "repa-eval"))
          (hsPkgs."repa-stream" or (errorHandler.buildDepError "repa-stream"))
          ];
        buildable = true;
        };
      };
    }