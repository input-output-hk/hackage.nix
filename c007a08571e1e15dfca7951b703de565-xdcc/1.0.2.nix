{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "xdcc";
          version = "1.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "git@jangerlinger.de";
        author = "Jan Gerlinger";
        homepage = "https://github.com/JanGe/xdcc";
        url = "";
        synopsis = "A wget-like utility for retrieving files from XDCC bots on\nIRC";
        description = "XDCC (eXtended DCC) is a protocol used by IRC bots to make\nfiles available for transfer. This utility can be used to\nretrieve such files.\n\nSee <https://de.wikipedia.org/wiki/XDCC> for\nmore details.";
        buildType = "Simple";
      };
      components = {
        exes = {
          xdcc = {
            depends  = [
              hsPkgs.base
              hsPkgs.ascii-progress
              hsPkgs.bytestring
              hsPkgs.case-insensitive
              hsPkgs.concurrent-extra
              hsPkgs.concurrent-output
              hsPkgs.errors
              hsPkgs.iproute
              hsPkgs.irc-ctcp
              hsPkgs.irc-dcc
              hsPkgs.network
              hsPkgs.optparse-applicative
              hsPkgs.path
              hsPkgs.random
              hsPkgs.simpleirc
              hsPkgs.transformers
              hsPkgs.unix
            ];
          };
        };
      };
    }