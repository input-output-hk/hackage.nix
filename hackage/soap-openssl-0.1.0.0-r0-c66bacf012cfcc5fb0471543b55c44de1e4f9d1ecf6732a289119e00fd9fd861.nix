{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "soap-openssl";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "aenor.realm@gmail.com";
      author = "Alexander Bondarenko";
      homepage = "https://bitbucket.org/dpwiz/haskell-soap";
      url = "";
      synopsis = "TLS-enabled SOAP transport (using openssl bindings)";
      description = "TLS-enabled SOAP transport (using openssl bindings)\n\n> main = withOpenSSL \$ do\n>     -- Initial one-time preparations.\n>     settings <- makeSettings (Just (\"client.crt\", \"client.key\"))\n>     transport <- initTransportWith settings \"http://example.com/soap/endpoint\" id (iconv \"cp-1251\")\n>\n>     -- the rest is the same as before...";
      buildType = "Simple";
    };
    components = {
      "soap-openssl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.soap)
          (hsPkgs.http-client)
          (hsPkgs.http-client-openssl)
          (hsPkgs.HsOpenSSL)
          (hsPkgs.text)
          (hsPkgs.configurator)
          (hsPkgs.data-default)
        ];
      };
    };
  }