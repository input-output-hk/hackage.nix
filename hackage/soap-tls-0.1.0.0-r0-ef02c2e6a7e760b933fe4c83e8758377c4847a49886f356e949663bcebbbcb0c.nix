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
        name = "soap-tls";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "aenor.realm@gmail.com";
      author = "Alexander Bondarenko";
      homepage = "https://bitbucket.org/dpwiz/haskell-soap";
      url = "";
      synopsis = "TLS-enabled SOAP transport (using tls package)";
      description = "TLS-enabled SOAP transport (using tls package)";
      buildType = "Simple";
    };
    components = {
      "soap-tls" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.soap)
          (hsPkgs.http-client-tls)
          (hsPkgs.tls)
          (hsPkgs.connection)
          (hsPkgs.x509-validation)
          (hsPkgs.text)
          (hsPkgs.configurator)
          (hsPkgs.data-default)
        ];
      };
    };
  }