{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "xdcc";
          version = "1.1.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "git@jangerlinger.de";
        author = "Jan Gerlinger";
        homepage = "https://github.com/JanGe/xdcc";
        url = "";
        synopsis = "A wget-like utility for retrieving files from XDCC bots on\nIRC";
        description = "XDCC (eXtended DCC) is a protocol used by IRC bots to make\nfiles available for transfer. This utility can be used to\nretrieve such files.\n\nSee <https://github.com/JanGe/xdcc/blob/master/README.md>\nfor usage instructions.\n\nSee <https://de.wikipedia.org/wiki/XDCC> for\nmore details.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "xdcc" = {
            depends  = [
              hsPkgs.base
              hsPkgs.ascii-progress
              hsPkgs.async
              hsPkgs.bytestring
              hsPkgs.case-insensitive
              hsPkgs.concurrent-output
              hsPkgs.errors
              hsPkgs.iproute
              hsPkgs.irc-client
              hsPkgs.irc-dcc
              hsPkgs.monad-control
              hsPkgs.network
              hsPkgs.optparse-applicative
              hsPkgs.path
              hsPkgs.random
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.transformers-base
              hsPkgs.safe-exceptions
              hsPkgs.signal
              hsPkgs.stm
              hsPkgs.unix-compat
            ];
          };
        };
      };
    }