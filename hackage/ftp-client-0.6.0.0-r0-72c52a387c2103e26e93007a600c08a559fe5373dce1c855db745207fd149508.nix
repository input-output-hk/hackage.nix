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
    flags = { ci = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "ftp-client"; version = "0.6.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Flipstone Technology Partners";
      author = "Megan Robinson";
      homepage = "https://github.com/flipstone/ftp-client";
      url = "";
      synopsis = "Transfer files with FTP and FTPS";
      description = "ftp-client is a library for communicating with an FTP server. It works over both a clear channel or TLS.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."crypton-connection" or (errorHandler.buildDepError "crypton-connection"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
        ] ++ pkgs.lib.optionals (flags.ci) (pkgs.lib.optional (compiler.isGhc && compiler.version.ge "9.6") (hsPkgs."henforcer" or (errorHandler.buildDepError "henforcer")));
        buildable = true;
      };
      tests = {
        "ftp-client-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."crypton-connection" or (errorHandler.buildDepError "crypton-connection"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."ftp-client" or (errorHandler.buildDepError "ftp-client"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }