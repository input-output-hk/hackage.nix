{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hubris";
          version = "0.0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Mark Wotton <mwotton@gmail.com>";
        author = "Mark Wotton <mwotton@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Support library for Hubris, the Ruby <=> Haskell bridge";
        description = "Support library for Hubris, the Ruby <=> Haskell bridge";
        buildType = "Simple";
      };
      components = {
        hubris = {
          depends  = [
            hsPkgs.ghc
            hsPkgs.Cabal
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.array
            hsPkgs.mtl
            hsPkgs.old-time
            hsPkgs.ghc-paths
            hsPkgs.haskell-src-meta
            hsPkgs.hint
          ];
          libs = [ pkgs.ruby ];
        };
        exes = {
          Hubrify = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc
              hsPkgs.Cabal
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.array
              hsPkgs.mtl
              hsPkgs.old-time
              hsPkgs.ghc-paths
              hsPkgs.haskell-src-meta
              hsPkgs.hint
            ];
            libs = [ pkgs.ruby ];
          };
        };
      };
    }