{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "network-simple-wss"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Renzo Carbonara 2018";
      maintainer = "renλren.zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/network-simple-wss";
      url = "";
      synopsis = "Simple interface to TLS secured WebSockets.";
      description = "Simple interface to TLS secured WebSockets.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.safe-exceptions)
          (hsPkgs.network-simple-tls)
          (hsPkgs.network-simple-ws)
          (hsPkgs.websockets)
          ];
        };
      };
    }