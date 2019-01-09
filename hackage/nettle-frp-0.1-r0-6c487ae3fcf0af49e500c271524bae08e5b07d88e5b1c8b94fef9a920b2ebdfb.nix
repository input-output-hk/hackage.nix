{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "nettle-frp"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andreas.voellmy@yale.edu";
      author = "Andreas Voellmy, Daniel Rozycki, Kwabene Antwi-Boasiako";
      homepage = "";
      url = "";
      synopsis = "FRP for controlling networks of OpenFlow switches.";
      description = "This module provides an FRP-based framework for controlling OpenFlow switches.\nThe library is under active development and should still be considered experimental.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.nettle-openflow)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.bimap)
          (hsPkgs.binary)
          (hsPkgs.time)
          (hsPkgs.network)
          (hsPkgs.haskell98)
          (hsPkgs.network-data)
          ];
        };
      };
    }