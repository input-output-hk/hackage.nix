{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "dns";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "";
        url = "";
        synopsis = "DNS libary in Haskell";
        description = "DNS libary for clients and servers.";
        buildType = "Simple";
      };
      components = {
        dns = {
          depends  = if compiler.isGhc
            then [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.iproute
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.bytestring
              hsPkgs.random
              hsPkgs.network
              hsPkgs.blaze-builder
              hsPkgs.attoparsec
              hsPkgs.enumerator
              hsPkgs.attoparsec-enumerator
              hsPkgs.network-enumerator
            ]
            else [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.iproute
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.bytestring
              hsPkgs.random
              hsPkgs.network
              hsPkgs.network-bytestring
              hsPkgs.blaze-builder
              hsPkgs.attoparsec
              hsPkgs.enumerator
              hsPkgs.attoparsec-enumerator
              hsPkgs.network-enumerator
            ];
        };
      };
    }