{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "hw-succinct";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "2016 John Ky";
        maintainer = "newhoggy@gmail.com";
        author = "John Ky";
        homepage = "http://github.com/haskell-works/hw-succinct#readme";
        url = "";
        synopsis = "Succint datastructures";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        hw-succinct = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.containers
            hsPkgs.hw-balancedparens
            hsPkgs.hw-bits
            hsPkgs.hw-prim
            hsPkgs.hw-rankselect
            hsPkgs.hw-rankselect-base
            hsPkgs.mmap
            hsPkgs.mono-traversable
            hsPkgs.text
            hsPkgs.vector
            hsPkgs.word8
          ];
        };
      };
    }