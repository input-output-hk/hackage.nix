{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Adaptive-Blaisorblade";
          version = "0.23";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "none";
        author = "Magnus Carlsson";
        homepage = "";
        url = "";
        synopsis = "Library for incremental computing.";
        description = "This is a Haskell (plus some extensions) implementation\nof a library for incremental computing.  It closely\nfollows the implementation in the nice POPL 2002 paper\n\"Adaptive Functional Programming\", by Umut Acar,\nGuy Blelloch and Bob Harper.\nThis is a small fork of the original library named\n\"Adaptive\", with the same interface but small adaptations\nto GHC 7.4.";
        buildType = "Simple";
      };
      components = {
        Adaptive-Blaisorblade = {
          depends  = [ hsPkgs.base ];
        };
        exes = { spreadsheet = {}; };
      };
    }