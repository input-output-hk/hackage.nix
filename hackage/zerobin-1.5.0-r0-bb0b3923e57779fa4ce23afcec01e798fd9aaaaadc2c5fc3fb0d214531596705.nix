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
    flags = { nodejs = false; cli = true; };
    package = {
      specVersion = "1.20";
      identifier = { name = "zerobin"; version = "1.5.0"; };
      license = "MIT";
      copyright = "2015, Zalora South East Asia Pte. Ltd";
      maintainer = "Igor Pashev <pashev.igor@gmail.com>";
      author = "Igor Pashev";
      homepage = "";
      url = "";
      synopsis = "Post to 0bin services";
      description = "Post encrypted content to 0bin sites\nlike http://0bin.net or https://paste.ec";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          ];
        buildable = true;
        };
      exes = {
        "zerobin" = {
          depends = (pkgs.lib).optionals (flags.cli) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."docopt" or (errorHandler.buildDepError "docopt"))
            (hsPkgs."zerobin" or (errorHandler.buildDepError "zerobin"))
            (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
            ];
          buildable = if flags.cli then true else false;
          };
        "zerobin-nodejs" = {
          depends = (pkgs.lib).optionals (flags.nodejs) [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."zerobin" or (errorHandler.buildDepError "zerobin"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = if flags.nodejs then true else false;
          };
        };
      };
    }