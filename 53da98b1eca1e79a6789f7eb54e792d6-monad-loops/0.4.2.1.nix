{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "monad-loops";
          version = "0.4.2.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "James Cook <mokus@deepbondi.net>";
        author = "James Cook <mokus@deepbondi.net>";
        homepage = "https://github.com/mokus0/monad-loops";
        url = "";
        synopsis = "Monadic loops";
        description = "Some useful control operators for looping.\n\nNew in 0.4: STM loop operators have been split into a\nnew package instead of being conditionally-built.\n\nNew in 0.3.2.0: various functions for traversing lists and\ncomputing minima/maxima using arbitrary procedures to compare\nor score the elements.";
        buildType = "Simple";
      };
      components = {
        "monad-loops" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }