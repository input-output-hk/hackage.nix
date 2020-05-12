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
      identifier = { name = "ftp-client-conduit"; version = "0.5.0.5"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "mrobinson7627@gmail.com";
      author = "Megan Robinson";
      homepage = "https://github.com/mr/ftp-client";
      url = "";
      synopsis = "Transfer file with FTP and FTPS with Conduit";
      description = "ftp-client is a library for communicating with an FTP server. It works over both a clear channel or TLS. ftp-client-conduit uses conduit to stream files and data in constant space.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ftp-client" or (errorHandler.buildDepError "ftp-client"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          ];
        buildable = true;
        };
      tests = {
        "ftp-conduit-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ftp-client-conduit" or (errorHandler.buildDepError "ftp-client-conduit"))
            ];
          buildable = true;
          };
        };
      };
    }