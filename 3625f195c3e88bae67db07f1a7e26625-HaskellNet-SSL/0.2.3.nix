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
      specVersion = "1.8";
      identifier = {
        name = "HaskellNet-SSL";
        version = "0.2.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Daniel P. Wright";
      maintainer = "dani@dpwright.com";
      author = "Daniel P. Wright";
      homepage = "https://github.com/dpwright/HaskellNet-SSL";
      url = "";
      synopsis = "Helpers to connect to SSL/TLS mail servers with HaskellNet";
      description = "This package ties together the HaskellNet and connection\npackages to make it easy to open IMAP and SMTP connections\nover SSL.";
      buildType = "Simple";
    };
    components = {
      "HaskellNet-SSL" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HaskellNet)
          (hsPkgs.tls)
          (hsPkgs.connection)
          (hsPkgs.network)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
        ];
      };
    };
  }