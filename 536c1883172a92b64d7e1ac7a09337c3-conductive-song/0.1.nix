{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "conductive-song";
          version = "0.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "renick@gmail.com";
        author = "Renick Bell";
        homepage = "http://www.renickbell.net/doku.php?id=conductive-song";
        url = "";
        synopsis = "a library of functions which are useful for composing music";
        description = "This library contains functions which are useful for composing music. One module deals with lists, intially intended to be useful for algorithmically generating rhythm patterns. The other two modules, Scale and Pitch, deal with exactly those two concepts.";
        buildType = "Simple";
      };
      components = {
        "conductive-song" = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.MissingH
            hsPkgs.random
          ];
        };
      };
    }