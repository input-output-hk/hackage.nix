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
      identifier = { name = "kevin"; version = "0.4"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "barebonesgraphics@gmail.com";
      author = "Joel Taylor";
      homepage = "";
      url = "";
      synopsis = "a dAmn ↔ IRC proxy";
      description = "a dAmn ↔ IRC proxy";
      buildType = "Simple";
      };
    components = {
      exes = {
        "kevin" = {
          depends = [
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cprng-aes" or (errorHandler.buildDepError "cprng-aes"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."regex-pcre-builtin" or (errorHandler.buildDepError "regex-pcre-builtin"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            (hsPkgs."tls-extra" or (errorHandler.buildDepError "tls-extra"))
            ];
          buildable = true;
          };
        };
      };
    }