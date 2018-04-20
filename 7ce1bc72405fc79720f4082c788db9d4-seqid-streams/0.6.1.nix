{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "seqid-streams";
          version = "0.6.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "luke@hoersten.org";
        author = "Luke Hoersten";
        homepage = "https://github.com/LukeHoersten/seqid-streams";
        url = "";
        synopsis = "Sequence ID IO-Streams";
        description = "Uniquely identify elements in a sequenced stream";
        buildType = "Simple";
      };
      components = {
        seqid-streams = {
          depends  = [
            hsPkgs.base
            hsPkgs.io-streams
            hsPkgs.seqid
          ];
        };
      };
    }