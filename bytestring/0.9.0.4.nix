{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bytestring";
          version = "0.9.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) Don Stewart   2005-2007,\n(c) Duncan Coutts 2006-2007,\n(c) David Roundy  2003-2005.";
        maintainer = "dons@galois.com, duncan@haskell.org";
        author = "Don Stewart, Duncan Coutts";
        homepage = "http://www.cse.unsw.edu.au/~dons/fps.html";
        url = "";
        synopsis = "Fast, packed, strict and lazy byte arrays with a list interface";
        description = "\nA time and space-efficient implementation of byte vectors using\npacked Word8 arrays, suitable for high performance use, both in terms\nof large data quantities, or high speed requirements. Byte vectors\nare encoded as strict 'Word8' arrays of bytes, held in a 'ForeignPtr',\nand can be passed between C and Haskell with little effort.\n";
        buildType = "Simple";
      };
      components = {
        bytestring = {
          depends  = if _flags.split-base
            then [
              hsPkgs.base
              hsPkgs.array
            ]
            else [ hsPkgs.base ];
        };
      };
    }