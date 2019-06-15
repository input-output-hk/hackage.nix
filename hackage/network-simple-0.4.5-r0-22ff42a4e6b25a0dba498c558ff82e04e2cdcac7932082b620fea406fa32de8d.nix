{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "network-simple"; version = "0.4.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Renzo Carbonara 2013-2019";
      maintainer = "renλren.zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/network-simple";
      url = "";
      synopsis = "Simple network sockets usage patterns.";
      description = "This module exports functions that abstract simple network socket\nusage patterns.\n\nSee the @changelog.md@ file in the source distribution to learn about any\nimportant changes between versions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.network-bsd)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.safe-exceptions)
          (hsPkgs.socks)
          ];
        };
      };
    }