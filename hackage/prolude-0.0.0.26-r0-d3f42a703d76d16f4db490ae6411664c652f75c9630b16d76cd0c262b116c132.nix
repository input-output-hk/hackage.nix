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
    flags = { pedantic = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "prolude"; version = "0.0.0.26"; };
      license = "MIT";
      copyright = "";
      maintainer = "ACI Learning";
      author = "";
      homepage = "";
      url = "";
      synopsis = "ACI Learning's custom prelude";
      description = "Prolude is ACI Learning's custom prelude.\n<https://www.acilearning.com>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."esqueleto" or (errorHandler.buildDepError "esqueleto"))
          (hsPkgs."generic-random" or (errorHandler.buildDepError "generic-random"))
          (hsPkgs."mongoDB" or (errorHandler.buildDepError "mongoDB"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."persistent-mongoDB" or (errorHandler.buildDepError "persistent-mongoDB"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."swagger2" or (errorHandler.buildDepError "swagger2"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."witch" or (errorHandler.buildDepError "witch"))
          ];
        buildable = true;
        };
      };
    }