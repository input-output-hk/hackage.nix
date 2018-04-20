{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wide-word";
          version = "0.1.0.6";
        };
        license = "BSD-2-Clause";
        copyright = "Copyright (c) 2017 Erik de Castro Lopo <erikd@mega-nerd.com>";
        maintainer = "erikd@mega-nerd.com";
        author = "Erik de Castro Lopo";
        homepage = "https://github.com/erikd/wide-word";
        url = "";
        synopsis = "Data types for large but fixed width signed and unsigned integers";
        description = "A library to provide data types for large (ie > 64 bits) but fixed width signed\nand unsigned integers with the usual typeclass instances to allow them to be used\ninterchangeably with `Word64`.\n\nThe types and operations are coded to be as fast as possible using strictness\nannotations, `INLINEABLE` pragmas and unboxed values and operations where\nappropriate.";
        buildType = "Simple";
      };
      components = {
        wide-word = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.ghc-prim
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.ghc-prim
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.wide-word
            ];
          };
        };
      };
    }