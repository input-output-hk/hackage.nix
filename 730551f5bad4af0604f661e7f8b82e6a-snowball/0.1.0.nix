{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "snowball";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012 Dag Odenhall, (c) 2008 Tupil, (c) 2002 Richard Boulton";
        maintainer = "dag.odenhall@gmail.com";
        author = "";
        homepage = "http://hub.darcs.net/dag/snowball";
        url = "";
        synopsis = "Bindings to the Snowball library.";
        description = "The Snowball library is used to compute the stems of words\nin natural languages.\n\nCompared to the older\n<http://hackage.haskell.org/package/stemmer stemmer>\npackage, this one:\n\n* Correctly handles unicode without relying on the system\nlocale\n\n* Takes greater care to avoid memory leaks\n\n* Uses Text rather than String\n\n* Gets rid of the need for @stemWords@ by using rewrite\nrules to make @map stem@ efficient\n\n* Includes a more recent release of Snowball\n\n* Attempts to comply with the Snowball licensing terms\n\nHowever, although this code is written from scratch, it is\nheavily modeled after the code of the \\\"stemmer\\\" package.";
        buildType = "Simple";
      };
      components = {
        "snowball" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
          ];
        };
      };
    }