{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cab";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "http://www.mew.org/~kazu/proj/cab/";
        url = "";
        synopsis = "A maintenance command of Haskell cabal packages";
        description = "This is a MacPorts-like maintenance command of\nHaskell cabal packages. Some part of this program is a wrapper to\n\"ghc-pkg\" and \"cabal\".\nIf you are always confused due to inconsistency of two commands,\nor if you want a way to check all outdated packages,\nor if you want a way to remove outdated packages recursively,\nthis command helps you.";
        buildType = "Simple";
      };
      components = {
        cab = {
          depends  = [
            hsPkgs.base
            hsPkgs.Cabal
            hsPkgs.attoparsec
            hsPkgs.attoparsec-conduit
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.process
            hsPkgs.process-conduit
          ];
        };
        exes = {
          cab = {
            depends  = [
              hsPkgs.base
              hsPkgs.cab
              hsPkgs.Cabal
              hsPkgs.attoparsec
              hsPkgs.attoparsec-conduit
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.process-conduit
            ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
          };
        };
      };
    }