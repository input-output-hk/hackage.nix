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
        name = "transient-universe-tls";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto G. Corona";
      homepage = "http://github.com/transient-haskell/transient-universe-tls";
      url = "";
      synopsis = "transient with secure communications";
      description = "Secure communications for transient";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.tls)
          (hsPkgs.cprng-aes)
          (hsPkgs.certificate)
          (hsPkgs.transient)
          (hsPkgs.transient-universe)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.network)
          (hsPkgs.x509-store)
        ];
      };
    };
  }