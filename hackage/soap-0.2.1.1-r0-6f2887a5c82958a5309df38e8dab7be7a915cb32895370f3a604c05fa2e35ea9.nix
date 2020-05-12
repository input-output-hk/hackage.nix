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
      specVersion = "1.8";
      identifier = { name = "soap"; version = "0.2.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "aenor.realm@gmail.com";
      author = "Alexander Bondarenko";
      homepage = "https://bitbucket.org/dpwiz/haskell-soap";
      url = "";
      synopsis = "SOAP client tools";
      description = "Tools to build SOAP clients using xml-conduit.\n\nA mildly-complicated example:\n\n> main = do\n>     -- Initial one-time preparations.\n>     certP <- clientCert \"priv/client.crt\" \"priv/client.key\"\n>     transport <- initTransport \"https://example.com/soap/endpoint\" certP (iconv \"cp-1251\")\n>\n>     -- Making queries\n>     activeStaff <- listStaff transport True\n>     print activeStaff\n>\n> data Person = Person Text Int deriving Show\n>\n> listStaff :: Transport -> Bool -> IO [Person]\n> listStaff t active = invokeWS t \"urn:dummy:listStaff\" () body parser\n>     where\n>         body = element \"request\" \$ element \"listStaff\" \$ do\n>                    element \"active\" active\n>                    element \"order\" \$ T.pack \"age\"\n>                    element \"limit\" (10 :: Int)\n>\n>         parser = StreamParser \$ force \"no people\" \$ tagNoAttr \"people\" \$ Parse.many parsePerson\n>\n>         parsePerson = tagName \"person\" (requireAttr \"age\") \$ \\age -> do\n>                           name <- Parse.content\n>                           return \$ Person name (read . unpack \$ age)\n\nChangelog\n\n* 0.2: Switch to xml-conduit-writer for more clean serializers.\nPluggable transports.\nRaw and streaming parsers.\n\n* 0.1: Initial implementation, somewhat inflexible and warty, but working\nwith diverse services.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."tls-extra" or (errorHandler.buildDepError "tls-extra"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
          (hsPkgs."xml-conduit-writer" or (errorHandler.buildDepError "xml-conduit-writer"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."iconv" or (errorHandler.buildDepError "iconv"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."soap" or (errorHandler.buildDepError "soap"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
            (hsPkgs."xml-conduit-writer" or (errorHandler.buildDepError "xml-conduit-writer"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }