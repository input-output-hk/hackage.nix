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
      identifier = { name = "hamtsolo"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2017 Jacek Galowicz";
      maintainer = "jacek@galowicz.de";
      author = "Jacek Galowicz ";
      homepage = "https://github.com/tfc/hamtsolo#readme";
      url = "";
      synopsis = "Intel AMT serial-over-lan (SOL) client";
      description = "hamtsolo lets you connect to Intel computers with enabled\nAMT and establish a serial-over-lan (SOL) connection.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hamtsolo" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."attoparsec-binary" or (errorHandler.buildDepError "attoparsec-binary"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."conduit-combinators" or (errorHandler.buildDepError "conduit-combinators"))
            (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."stm-conduit" or (errorHandler.buildDepError "stm-conduit"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
            ];
          buildable = true;
          };
        };
      };
    }