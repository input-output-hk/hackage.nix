{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "sirkel";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Morten Olsen Lysgaard <morten@lysgaard.no>";
        author = "Morten Olsen Lysgaard <morten@lysgaard.no>";
        homepage = "";
        url = "";
        synopsis = "Sirkel, a Chord DHT";
        description = "An implementation of the Chord DHT with replication and faulth tolerance";
        buildType = "Simple";
      };
      components = {
        sirkel = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.random
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.hashtables
            hsPkgs.remote
            hsPkgs.SHA
          ];
        };
      };
    }