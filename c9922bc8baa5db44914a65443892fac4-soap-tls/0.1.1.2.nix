{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "soap-tls";
        version = "0.1.1.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "aenor.realm@gmail.com";
      author = "Alexander Bondarenko";
      homepage = "https://bitbucket.org/dpwiz/haskell-soap";
      url = "";
      synopsis = "TLS-enabled SOAP transport (using tls package)";
      description = "TLS-enabled SOAP transport (using tls package)\n\n> main = do\n>     -- Initial one-time preparations.\n>     settings <- makeSettings (Just \"client.crt\") (Just \"client.key\") validateDefault\n>     transport <- initTransportWith settings \"http://example.com/soap/endpoint\" id (iconv \"cp-1251\")\n>\n>     -- the rest is the same as before...";
      buildType = "Simple";
    };
    components = {
      "soap-tls" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.soap)
          (hsPkgs.configurator)
          (hsPkgs.connection)
          (hsPkgs.data-default)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.text)
          (hsPkgs.tls)
          (hsPkgs.x509)
          (hsPkgs.x509-store)
          (hsPkgs.x509-validation)
        ];
      };
    };
  }