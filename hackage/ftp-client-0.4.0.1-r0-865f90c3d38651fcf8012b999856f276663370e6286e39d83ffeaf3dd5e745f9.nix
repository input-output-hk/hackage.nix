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
      identifier = { name = "ftp-client"; version = "0.4.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "mrobinson7627@gmail.com";
      author = "Matthew Robinson";
      homepage = "https://github.com/mr/ftp-client";
      url = "";
      synopsis = "Transfer files with FTP and FTPS";
      description = "ftp-client is a library for communicating with an FTP server. It works over both a clear channel or TLS.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "ftp-client-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ftp-client" or (errorHandler.buildDepError "ftp-client"))
            ];
          buildable = true;
          };
        };
      };
    }