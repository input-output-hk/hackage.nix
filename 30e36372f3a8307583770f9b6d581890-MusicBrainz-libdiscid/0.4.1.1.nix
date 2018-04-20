{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "MusicBrainz-libdiscid";
          version = "0.4.1.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "2013 André Twupack";
        maintainer = "André Twupack";
        author = "André Twupack";
        homepage = "https://github.com/atwupack/MusicBrainz-libdiscid";
        url = "";
        synopsis = "Binding to libdiscid by MusicBrainz";
        description = "Binding to libdiscid by MusicBrainz.";
        buildType = "Simple";
      };
      components = {
        MusicBrainz-libdiscid = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.vector
          ];
          libs = pkgs.lib.optional system.isWindows pkgs.winmm;
        };
      };
    }