{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hackport";
          version = "0.2.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Gentoo Haskell team <haskell@gentoo.org>";
        author = "Henning Günther, Duncan Coutts, Lennart Kolmodin";
        homepage = "";
        url = "";
        synopsis = "Hackage and Portage integration tool";
        description = "A command line tool to manage an overlay of Gentoo ebuilds\nthat are generated from a hackage repo of Cabal packages.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hackport = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.parsec
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.regex-compat
              hsPkgs.Cabal
              hsPkgs.HTTP
              hsPkgs.zlib
              hsPkgs.tar
            ] ++ (if _flags.split-base
              then [
                hsPkgs.base
                hsPkgs.directory
                hsPkgs.containers
                hsPkgs.process
                hsPkgs.old-time
                hsPkgs.bytestring
              ]
              else [ hsPkgs.base ]);
          };
        };
      };
    }