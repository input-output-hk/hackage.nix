{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      splitbase = true;
      buildtests = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "haskore-supercollider";
        version = "0.1.2.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/SuperCollider";
      url = "";
      synopsis = "Haskore back-end for SuperCollider";
      description = "This package lets you play Haskore music via Supercollider\nusing the packages @hosc@ and @hsc3@.\nThe functions manage NodeIds and SuperCollider buffers for you.\nWe support realtime replay and rendering to disk.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.haskore-realtime)
          (hsPkgs.haskore)
          (hsPkgs.hosc)
          (hsPkgs.hsc3)
          (hsPkgs.opensoundcontrol-ht)
          (hsPkgs.supercollider-ht)
          (hsPkgs.bytestring)
          (hsPkgs.non-negative)
          (hsPkgs.event-list)
          (hsPkgs.data-accessor)
          (hsPkgs.utility-ht)
          (hsPkgs.unix)
          (hsPkgs.transformers)
        ] ++ (if flags.splitbase
          then [
            (hsPkgs.process)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.base)
          ]
          else [ (hsPkgs.base) ]);
      };
      exes = {
        "song-air" = {};
        "test" = {
          depends  = pkgs.lib.optionals (flags.buildtests) [
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }