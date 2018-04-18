{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "MusicBrainz";
          version = "0.3.1";
        };
        license = "GPL-3.0-only";
        copyright = "2012-2017 Clint Adams";
        maintainer = "clint@debian.org";
        author = "Clint Adams";
        homepage = "http://floss.scru.org/hMusicBrainz";
        url = "";
        synopsis = "interface to MusicBrainz XML2 and JSON web services";
        description = "interface to MusicBrainz XML2 and JSON web services";
        buildType = "Simple";
      };
      components = {
        MusicBrainz = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.monad-control
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.text
            hsPkgs.time
            hsPkgs.resourcet
            hsPkgs.time-locale-compat
            hsPkgs.vector
            hsPkgs.xml-types
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.xml-conduit
            hsPkgs.HTTP
            hsPkgs.aeson
          ];
        };
      };
    }