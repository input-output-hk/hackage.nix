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
      identifier = { name = "soap"; version = "0.2.3.4"; };
      license = "MIT";
      copyright = "(c) 2013-2017 Alexander Bondarenko";
      maintainer = "aenor.realm@gmail.com";
      author = "Alexander Bondarenko";
      homepage = "https://bitbucket.org/dpwiz/haskell-soap";
      url = "";
      synopsis = "SOAP client tools";
      description = "Tools to build SOAP clients using xml-conduit.\n\nA mildly-complicated example:\n\n> import Network.SOAP\n> import Network.SOAP.Transport.HTTP\n>\n> import Text.XML.Writer\n> import Text.XML.Stream.Parse as Parse\n> import           Data.Text (Text)\n> import qualified Data.Text as T\n>\n> main :: IO ()\n> main = do\n>     -- Initial one-time preparations.\n>     transport <- initTransport \"http://example.com/soap/endpoint\" id (iconv \"cp-1251\")\n>\n>     -- Making queries\n>     activeStaff <- listStaff transport True\n>     print activeStaff\n>\n> data Person = Person Text Int deriving Show\n>\n> listStaff :: Transport -> Bool -> IO [Person]\n> listStaff t active = invokeWS t \"urn:dummy:listStaff\" () body parser\n>     where\n>         body = element \"request\" $ element \"listStaff\" $ do\n>                    element \"active\" active\n>                    element \"order\" $ T.pack \"age\"\n>                    element \"limit\" (10 :: Int)\n>\n>         parser = StreamParser $ force \"no people\" $ tagNoAttr \"people\" $ Parse.many parsePerson\n>\n>         parsePerson = tagName \"person\" (requireAttr \"age\") $ \\age -> do\n>                           name <- Parse.content\n>                           return $ Person name (read . T.unpack $ age)\n\nNotice: to invoke HTTPS services you need to initialize a transport from soap-tls or soap-openssl.\n\nFull examples available at source repo: <https://bitbucket.org/dpwiz/haskell-soap/src/HEAD/soap/examples/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
          (hsPkgs."xml-conduit-writer" or (errorHandler.buildDepError "xml-conduit-writer"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
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