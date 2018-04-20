{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "conduit-audio";
          version = "0.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "miketolly@gmail.com";
        author = "Michael Tolly";
        homepage = "http://github.com/mtolly/conduit-audio";
        url = "";
        synopsis = "Combinators to efficiently slice and dice audio streams";
        description = "@conduit-audio@ applies @conduit@'s streaming data abilities\nto efficiently manipulate audio files and streams.\nSimple combinator functions let you mix files together,\ncut and paste sections of audio,\nand apply more complicated transformations like resampling or timestretching,\nall with the following properties:\n\n* Tiny memory usage, proportional only to the number of simultaneous sources\\/effects\n\n* Uses no temporary files; everything is done in one pass\n\n* Blazing fast! (for most uses)";
        buildType = "Simple";
      };
      components = {
        conduit-audio = {
          depends  = [
            hsPkgs.base
            hsPkgs.conduit
            hsPkgs.vector
          ];
        };
      };
    }