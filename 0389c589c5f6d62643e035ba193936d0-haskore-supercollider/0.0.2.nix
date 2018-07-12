{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      buildtests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "haskore-supercollider";
          version = "0.0.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://www.haskell.org/haskellwiki/SuperCollider";
        url = "http://darcs.haskell.org/haskore-supercollider/";
        synopsis = "Haskore back-end for SuperCollider";
        description = "This package lets you play Haskore music via Supercollider\nusing the packages @hosc@ and @hsc3@.\nThe functions manage NodeIds and SuperCollider buffers for you.\nWe support realtime replay and rendering to disk.";
        buildType = "Simple";
      };
      components = {
        "haskore-supercollider" = {
          depends  = [
            hsPkgs.haskore-realtime
            hsPkgs.haskore
            hsPkgs.hosc
            hsPkgs.hsc3
            hsPkgs.supercollider-ht
            hsPkgs.bytestring
            hsPkgs.non-negative
            hsPkgs.event-list
            hsPkgs.data-accessor
            hsPkgs.unix
            hsPkgs.mtl
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.array
              hsPkgs.process
            ]
            else [ hsPkgs.base ]);
        };
        exes = {
          "song-air" = {};
          "test" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.HUnit
            ];
          };
        };
      };
    }