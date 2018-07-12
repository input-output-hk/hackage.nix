{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "th-orphans";
          version = "0.6.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Matt Morrow";
        maintainer = "Michael Sloan <mgsloan at gmail>";
        author = "Matt Morrow";
        homepage = "";
        url = "";
        synopsis = "Orphan instances for TH datatypes";
        description = "Orphan instances for TH datatypes.  In particular, instances\nfor Ord and Lift, as well as a few missing Show / Eq.  These\ninstances used to live in haskell-src-meta, and that's where\nthe version number started.";
        buildType = "Simple";
      };
      components = {
        "th-orphans" = {
          depends  = [
            hsPkgs.base
            hsPkgs.th-lift
          ] ++ [
            hsPkgs.template-haskell
          ];
        };
      };
    }