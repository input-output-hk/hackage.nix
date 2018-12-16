{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      noupperbounds = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "HaskellNet-SSL";
        version = "0.3.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Daniel P. Wright";
      maintainer = "dani@dpwright.com, lemol-c@hotmail.com";
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