{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ekg-carbon";
          version = "1.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ollie@ocharles.org.uk";
        author = "Oliver Charles";
        homepage = "http://github.com/ocharles/ekg-carbon";
        url = "";
        synopsis = "An EKG backend to send statistics to Carbon (part of Graphite monitoring tools)";
        description = "";
        buildType = "Simple";
      };
      components = {
        ekg-carbon = {
          depends  = [
            hsPkgs.base
            hsPkgs.ekg-core
            hsPkgs.network
            hsPkgs.network-carbon
            hsPkgs.text
            hsPkgs.time
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
      };
    }