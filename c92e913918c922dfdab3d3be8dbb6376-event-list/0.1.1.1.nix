{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "event-list";
          version = "0.1.1.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://code.haskell.org/~thielema/event-list/";
        url = "";
        synopsis = "Event lists with relative or absolute time stamps";
        description = "These lists manage events that are associated with times.\nTimes may be given as difference between successive events\nor as absolute time values.\nPauses before the first and after the last event are supported.\nThe underlying data structures are lists of elements of alternating types,\nthat is [b,a,b,...,a,b] or [a,b,a,...,a,b].\nThe data structures can be used to represent\nMIDI files, OpenSoundControl message streams, music performances etc.";
        buildType = "Simple";
      };
      components = {
        "event-list" = {
          depends  = [
            hsPkgs.non-negative
            hsPkgs.transformers
            hsPkgs.utility-ht
            hsPkgs.QuickCheck
          ] ++ (if _flags.splitbase
            then [ hsPkgs.base ]
            else [
              hsPkgs.special-functors
              hsPkgs.base
            ]);
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.transformers
              hsPkgs.non-negative
              hsPkgs.utility-ht
              hsPkgs.base
            ] ++ pkgs.lib.optional _flags.splitbase hsPkgs.random;
          };
        };
      };
    }