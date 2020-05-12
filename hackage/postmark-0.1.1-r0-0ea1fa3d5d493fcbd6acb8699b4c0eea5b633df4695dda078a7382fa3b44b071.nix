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
    flags = { small_base = true; demo = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "postmark"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Mark Hibberd";
      maintainer = "Mark Hibberd <mark@hibberd.id.au>";
      author = "Mark Hibberd <mark@hibberd.id.au>";
      homepage = "https://github.com/apiengine/postmark";
      url = "";
      synopsis = "Library for postmarkapp.com HTTP Api";
      description = "postmark";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."network-api-support" or (errorHandler.buildDepError "network-api-support"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          ];
        buildable = true;
        };
      exes = {
        "postmark-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."postmark" or (errorHandler.buildDepError "postmark"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = if flags.demo then true else false;
          };
        };
      };
    }