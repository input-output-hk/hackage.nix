{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hw-conduit";
          version = "0.0.0.11";
        };
        license = "BSD-3-Clause";
        copyright = "2016 John Ky";
        maintainer = "newhoggy@gmail.com";
        author = "John Ky";
        homepage = "http://github.com/haskell-works/hw-conduit#readme";
        url = "";
        synopsis = "Conduits for tokenizing streams.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "hw-conduit" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.hw-bits
            hsPkgs.resourcet
            hsPkgs.word8
          ];
        };
        exes = {
          "hw-conduit-example" = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.hw-conduit
            ];
          };
        };
        tests = {
          "hw-conduit-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.hw-conduit
            ];
          };
        };
        benchmarks = {
          "bench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.criterion
              hsPkgs.hw-conduit
              hsPkgs.mmap
              hsPkgs.vector
            ];
          };
        };
      };
    }