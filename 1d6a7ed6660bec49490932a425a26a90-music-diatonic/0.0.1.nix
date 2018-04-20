{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "music-diatonic";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "patl@cpan.org";
        author = "Patrick LeBoutillier";
        homepage = "";
        url = "";
        synopsis = "Implementation of basic western musical theory objects.";
        description = "music-diatonic provides an implementation of basic western musical theory objects.\nIncludes notes, scales, chords, degrees and harmonies.";
        buildType = "Simple";
      };
      components = {
        music-diatonic = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
          ];
        };
      };
    }