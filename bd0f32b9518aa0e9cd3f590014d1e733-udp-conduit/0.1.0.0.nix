{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "udp-conduit";
          version = "0.1.0.0";
        };
        license = "ISC";
        copyright = "(c) 2016 kqr";
        maintainer = "k@rdw.se";
        author = "kqr";
        homepage = "https://github.com/kqr/udp-conduit#readme";
        url = "";
        synopsis = "Simple fire-and-forget conduit UDP wrappers";
        description = "`udp-conduit` provides simple wrappers to get fire-and-forget UDP sinks\nand sources.";
        buildType = "Simple";
      };
      components = {
        udp-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.mono-traversable
            hsPkgs.chunked-data
            hsPkgs.network
            hsPkgs.conduit-combinators
          ];
        };
      };
    }