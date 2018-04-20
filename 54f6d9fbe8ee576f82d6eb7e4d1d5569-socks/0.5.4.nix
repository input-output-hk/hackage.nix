{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "socks";
          version = "0.5.4";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hs-socks";
        url = "";
        synopsis = "Socks proxy (version 5) implementation.";
        description = "Socks proxy (version 5) implementation.";
        buildType = "Simple";
      };
      components = {
        socks = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.network
          ];
        };
      };
    }