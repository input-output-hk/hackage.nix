{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "servant-client";
        version = "0.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "2014 Zalora South East Asia Pte Ltd";
      maintainer = "alpmestan@gmail.com";
      author = "Alp Mestanogullari, Sönke Hahn, Julian K. Arni";
      homepage = "http://haskell-servant.github.io/";
      url = "";
      synopsis = "automatical derivation of querying functions for servant webservices";
      description = "This library lets you derive automatically Haskell functions that\nlet you query each endpoint of a <http://hackage.haskell.org/package/servant servant> webservice.\n\nExample below.\n\n> type MyApi = \"books\" :> Get [Book] -- GET /books\n>         :<|> \"books\" :> ReqBody Book :> Post Book -- POST /books\n>\n> myApi :: Proxy MyApi\n> myApi = Proxy\n>\n> getAllBooks :: BaseUrl -> EitherT String IO [Book]\n> postNewBook :: Book -> BaseUrl -> EitherT String IO Book\n> (getAllBooks :<|> postNewBook) = client myApi\n\n<https://github.com/haskell-servant/servant/blob/master/servant-client/CHANGELOG.md CHANGELOG>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.either)
          (hsPkgs.exceptions)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.network-uri)
          (hsPkgs.safe)
          (hsPkgs.servant)
          (hsPkgs.string-conversions)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.either)
            (hsPkgs.hspec)
            (hsPkgs.http-client)
            (hsPkgs.http-media)
            (hsPkgs.http-types)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.QuickCheck)
            (hsPkgs.servant)
            (hsPkgs.servant-client)
            (hsPkgs.servant-server)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.warp)
          ];
        };
      };
    };
  }