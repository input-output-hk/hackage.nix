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
      specVersion = "1.4";
      identifier = { name = "tccli"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "voker57@gmail.com";
      author = "Voker57";
      homepage = "http://bitcheese.net/wiki/code/tccli";
      url = "";
      synopsis = "TokyoCabinet CLI interface";
      description = "Simple TokyoCabinet CLI interface";
      buildType = "Simple";
      };
    components = {
      exes = {
        "tchcli" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tokyocabinet-haskell" or (errorHandler.buildDepError "tokyocabinet-haskell"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        };
      };
    }