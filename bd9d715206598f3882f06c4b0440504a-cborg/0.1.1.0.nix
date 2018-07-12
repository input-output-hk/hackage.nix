{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      optimize-gmp = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cborg";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2015-2017 Duncan Coutts,\n2015-2017 Well-Typed LLP,\n2015 IRIS Connect Ltd";
        maintainer = "duncan@community.haskell.org, ben@smart-cactus.org";
        author = "Duncan Coutts";
        homepage = "";
        url = "";
        synopsis = "Concise Binary Object Representation";
        description = "This package (formerly @binary-serialise-cbor@) provides an efficient\nimplementation of the Concise Binary Object Representation (CBOR), as\nspecified by RFC 7049.\n\nIf you are looking for a library for serialisation of Haskell values,\nhave a look at the @serialise@ package, which is built upon this library.";
        buildType = "Simple";
      };
      components = {
        "cborg" = {
          depends  = ([
            hsPkgs.array
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.ghc-prim
            hsPkgs.half
            hsPkgs.primitive
            hsPkgs.text
          ] ++ pkgs.lib.optional _flags.optimize-gmp hsPkgs.integer-gmp) ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "8.0")) [
            hsPkgs.fail
            hsPkgs.semigroups
          ];
        };
      };
    }