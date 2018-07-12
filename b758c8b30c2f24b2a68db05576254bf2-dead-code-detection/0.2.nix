{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dead-code-detection";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Sönke Hahn <soenkehahn@gmail.com>";
        author = "";
        homepage = "https://github.com/soenkehahn/dead-code-detection#readme";
        url = "";
        synopsis = "detect dead code in haskell projects";
        description = "detect dead code in haskell projects";
        buildType = "Simple";
      };
      components = {
        exes = {
          "dead-code-detection" = {
            depends  = [
              hsPkgs.base
              hsPkgs.silently
              hsPkgs.getopt-generics
              hsPkgs.ghc
              hsPkgs.Glob
              hsPkgs.string-conversions
              hsPkgs.graph-wrapper
              hsPkgs.containers
              hsPkgs.uniplate
              hsPkgs.ghc-paths
              hsPkgs.gitrev
            ];
          };
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.silently
              hsPkgs.getopt-generics
              hsPkgs.ghc
              hsPkgs.Glob
              hsPkgs.string-conversions
              hsPkgs.graph-wrapper
              hsPkgs.containers
              hsPkgs.uniplate
              hsPkgs.ghc-paths
              hsPkgs.gitrev
              hsPkgs.hspec
              hsPkgs.mockery
              hsPkgs.interpolate
              hsPkgs.filepath
              hsPkgs.directory
            ];
          };
        };
      };
    }