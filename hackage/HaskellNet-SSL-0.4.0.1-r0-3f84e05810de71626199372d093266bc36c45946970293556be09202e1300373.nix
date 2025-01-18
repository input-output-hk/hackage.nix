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
    flags = { network-bsd = true; };
    package = {
      specVersion = "1.18";
      identifier = { name = "HaskellNet-SSL"; version = "0.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Daniel P. Wright";
      maintainer = "Leza M. Lutonda <lemol-c@outlook.com>, dani@dpwright.com, contact@mangoiv.com";
      author = "Daniel P. Wright";
      homepage = "https://github.com/dpwright/HaskellNet-SSL";
      url = "";
      synopsis = "Helpers to connect to SSL/TLS mail servers with HaskellNet";
      description = "This package ties together the HaskellNet and connection\npackages to make it easy to open IMAP and SMTP connections\nover SSL.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HaskellNet" or (errorHandler.buildDepError "HaskellNet"))
          (hsPkgs."crypton-connection" or (errorHandler.buildDepError "crypton-connection"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
        ] ++ (if flags.network-bsd
          then [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-bsd" or (errorHandler.buildDepError "network-bsd"))
          ]
          else [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ]);
        buildable = true;
      };
      exes = {
        "HaskellNet-SSL-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HaskellNet-SSL" or (errorHandler.buildDepError "HaskellNet-SSL"))
            (hsPkgs."HaskellNet" or (errorHandler.buildDepError "HaskellNet"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
    };
  }