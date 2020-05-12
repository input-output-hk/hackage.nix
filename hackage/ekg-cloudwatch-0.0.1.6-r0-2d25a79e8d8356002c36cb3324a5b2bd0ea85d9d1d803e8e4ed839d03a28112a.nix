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
      identifier = { name = "ekg-cloudwatch"; version = "0.0.1.6"; };
      license = "BSD-3-Clause";
      copyright = "2016 Seller Labs";
      maintainer = "matt@sellerlabs.com";
      author = "Matt Parsons";
      homepage = "https://github.com/sellerlabs/ekg-cloudwatch#readme";
      url = "";
      synopsis = "An ekg backend for Amazon Cloudwatch";
      description = "Push ekg metrics to Amazon Cloudwatch";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ekg-core" or (errorHandler.buildDepError "ekg-core"))
          (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
          (hsPkgs."amazonka-cloudwatch" or (errorHandler.buildDepError "amazonka-cloudwatch"))
          (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      };
    }