{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "phonetic-code";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright © 2008 Bart Massey";
        maintainer = "bart@cs.pdx.edu";
        author = "Bart Massey";
        homepage = "http://wiki.cs.pdx.edu/bartforge/phonetic-code";
        url = "http://wiki.cs.pdx.edu/cabal-packages/phonetic-code-0.1.tar.gz";
        synopsis = "Phonetic codes: Soundex and Phonix";
        description = "This package implements the \"phonetic coding\" algorithms\nSoundex and Phonix.  A phonetic coding algorithm\ntransforms a word into a similarity hash based on an\napproximation of its sounds.  Thus, similar-sounding\nwords tend to have the same hash.";
        buildType = "Simple";
      };
      components = {
        phonetic-code = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.array
          ];
        };
      };
    }