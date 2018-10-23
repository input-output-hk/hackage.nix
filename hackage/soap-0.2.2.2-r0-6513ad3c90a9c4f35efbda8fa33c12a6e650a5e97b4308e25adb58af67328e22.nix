{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "soap";
        version = "0.2.2.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "aenor.realm@gmail.com";
      author = "Alexander Bondarenko";
      homepage = "https://bitbucket.org/dpwiz/haskell-soap";
      url = "";
      synopsis = "SOAP client tools";
      description = "Tools to build SOAP clients using xml-conduit.\n\nA mildly-complicated example:\n\n> main = do\n>     -- Initial one-time preparations.\n>     transport <- initTransport \"http://example.com/soap/endpoint\" id (iconv \"cp-1251\")\n>\n>     -- Making queries\n>     activeStaff <- listStaff transport True\n>     print activeStaff\n>\n> data Person = Person Text Int deriving Show\n>\n> listStaff :: Transport -> Bool -> IO [Person]\n> listStaff t active = invokeWS t \"urn:dummy:listStaff\" () body parser\n>     where\n>         body = element \"request\" \$ element \"listStaff\" \$ do\n>                    element \"active\" active\n>                    element \"order\" \$ T.pack \"age\"\n>                    element \"limit\" (10 :: Int)\n>\n>         parser = StreamParser \$ force \"no people\" \$ tagNoAttr \"people\" \$ Parse.many parsePerson\n>\n>         parsePerson = tagName \"person\" (requireAttr \"age\") \$ \\age -> do\n>                           name <- Parse.content\n>                           return \$ Person name (read . unpack \$ age)\n\nNotice: to invoke HTTPS services you need to initialize a transport from soap-tls or soap-openssl.";
      buildType = "Simple";
    };
    components = {
      "soap" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.configurator)
          (hsPkgs.xml-conduit-writer)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-types)
          (hsPkgs.conduit)
          (hsPkgs.exceptions)
          (hsPkgs.resourcet)
          (hsPkgs.data-default)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.iconv)
          (hsPkgs.unordered-containers)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.soap)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.xml-conduit)
            (hsPkgs.xml-conduit-writer)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }