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
    flags = {
      http = true;
      gemini = true;
      file = true;
      data = true;
      freedesktop = true;
      appstream = true;
      rewriters = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "hurl"; version = "1.4.2.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "adrian@openwork.nz";
      author = "Adrian Cochrane";
      homepage = "https://git.adrian.geek.nz/hurl.git/";
      url = "";
      synopsis = "Haskell URL resolver";
      description = "Retrieves resources for a URI, whether they be HTTP(S), gemini:, file:, or data:.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ] ++ (pkgs.lib).optionals (flags.http) [
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."http-client-openssl" or (errorHandler.buildDepError "http-client-openssl"))
          (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
          ]) ++ (pkgs.lib).optionals (flags.gemini) [
          (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
          (hsPkgs."openssl-streams" or (errorHandler.buildDepError "openssl-streams"))
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          ]) ++ (pkgs.lib).optional (flags.data) (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))) ++ (pkgs.lib).optional (flags.freedesktop) (hsPkgs."process" or (errorHandler.buildDepError "process"))) ++ (pkgs.lib).optionals (flags.freedesktop && flags.appstream) [
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ]) ++ (pkgs.lib).optionals (flags.rewriters) [
          (hsPkgs."regex" or (errorHandler.buildDepError "regex"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          ];
        buildable = true;
        };
      exes = {
        "hurl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hurl" or (errorHandler.buildDepError "hurl"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }