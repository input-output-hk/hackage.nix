{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "bloomfilter";
          version = "1.2.6.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
        author = "Bryan O'Sullivan <bos@serpentine.com>";
        homepage = "http://www.serpentine.com/software/bloomfilter";
        url = "";
        synopsis = "Pure and impure Bloom Filter implementations.";
        description = "Pure and impure Bloom Filter implementations.";
        buildType = "Simple";
      };
      components = {
        bloomfilter = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.deepseq
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.base;
        };
      };
    }