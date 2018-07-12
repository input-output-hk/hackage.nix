{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mono-traversable";
          version = "1.0.5.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman, John Wiegley, Greg Weber";
        homepage = "https://github.com/snoyberg/mono-traversable#readme";
        url = "";
        synopsis = "Type classes for mapping, folding, and traversing monomorphic containers";
        description = "Please see the README at <https://www.stackage.org/package/mono-traversable>";
        buildType = "Simple";
      };
      components = {
        "mono-traversable" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.hashable
            hsPkgs.split
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.vector-algorithms
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") hsPkgs.semigroups;
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.foldl
              hsPkgs.hspec
              hsPkgs.mono-traversable
              hsPkgs.semigroups
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.vector
            ];
          };
        };
        benchmarks = {
          "sorting" = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.mono-traversable
              hsPkgs.mwc-random
              hsPkgs.vector
            ];
          };
        };
      };
    }