{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      withquickcheck = false;
      withutils = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fixplate";
          version = "0.1.6";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011-2015 Balazs Komuves";
        maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
        author = "Balazs Komuves";
        homepage = "http://code.haskell.org/~bkomuves/";
        url = "";
        synopsis = "Uniplate-style generic traversals for optionally annotated fixed-point types.";
        description = "Uniplate-style generic traversals for fixed-point types, which can be\noptionally annotated with attributes. We also provide recursion schemes,\na generic zipper, generic pretty-printer, generic tries, generic hashing,\nand generic tree visualization. See the module \"Data.Generics.Fixplate\" and\nthen the individual modules for more detailed information.";
        buildType = "Simple";
      };
      components = {
        "fixplate" = {
          depends  = ([
            hsPkgs.base
          ] ++ pkgs.lib.optional _flags.withutils hsPkgs.containers) ++ pkgs.lib.optional _flags.withquickcheck hsPkgs.QuickCheck;
        };
      };
    }