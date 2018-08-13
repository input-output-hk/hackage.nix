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
        name = "network-simple-tls";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Renzo Carbonara 2013-2018";
      maintainer = "renλren.zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/network-simple-tls";
      url = "";
      synopsis = "Simple interface to TLS secured network sockets.";
      description = "Simple interface to TLS secured network sockets.";
      buildType = "Simple";
    };
    components = {
      "network-simple-tls" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.exceptions)
          (hsPkgs.network-simple)
          (hsPkgs.tls)
          (hsPkgs.transformers)
          (hsPkgs.x509)
          (hsPkgs.x509-system)
          (hsPkgs.x509-store)
          (hsPkgs.x509-validation)
          (hsPkgs.data-default)
        ];
      };
    };
  }