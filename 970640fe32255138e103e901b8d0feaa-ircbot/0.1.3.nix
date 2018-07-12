{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ircbot";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jeremy@seereason.com";
        author = "Jeremy Shaw";
        homepage = "http://patch-tag.com/r/stepcut/ircbot";
        url = "";
        synopsis = "A library for writing irc bots";
        description = "";
        buildType = "Simple";
      };
      components = {
        "ircbot" = {
          depends  = [
            hsPkgs.base
            hsPkgs.filepath
            hsPkgs.irc
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.old-locale
            hsPkgs.parsec
            hsPkgs.time
            hsPkgs.unix
            hsPkgs.random
          ];
        };
      };
    }