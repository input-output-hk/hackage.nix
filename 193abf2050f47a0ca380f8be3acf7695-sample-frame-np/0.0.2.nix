{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "sample-frame-np";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
        url = "http://code.haskell.org/~thielema/sample-frame/core/";
        synopsis = "Orphan instances for types from sample-frame and numericprelude";
        description = "Orphan instances for types from @sample-frame@ package\nand type classes from @numeric-prelude@.\nUsing this package instead defining custom orphan instances\nsaves you from conflicting instances.\n\nThis is used by packages @synthesizer@, @synthesizer-alsa@, @synthesizer-llvm@.";
        buildType = "Simple";
      };
      components = {
        "sample-frame-np" = {
          depends  = [
            hsPkgs.sample-frame
            hsPkgs.numeric-prelude
          ] ++ (if _flags.splitbase
            then [ hsPkgs.base ]
            else [
              hsPkgs.special-functors
              hsPkgs.base
            ]);
        };
      };
    }