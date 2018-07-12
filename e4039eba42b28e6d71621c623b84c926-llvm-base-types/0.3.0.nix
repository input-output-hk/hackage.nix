{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "llvm-base-types";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "travitch@cs.wisc.edu";
        author = "Tristan Ravitch";
        homepage = "";
        url = "";
        synopsis = "The base types for a mostly pure Haskell LLVM analysis library";
        description = "";
        buildType = "Simple";
      };
      components = {
        "llvm-base-types" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hashable
            hsPkgs.transformers
            hsPkgs.graphviz
            hsPkgs.GenericPretty
            hsPkgs.dwarf
            hsPkgs.deepseq
            hsPkgs.vector
            hsPkgs.failure
            hsPkgs.text
            hsPkgs.regex-tdfa
            hsPkgs.pretty
            hsPkgs.unordered-containers
            hsPkgs.containers
          ];
          build-tools = [
            hsPkgs.buildPackages.c2hs
          ];
        };
      };
    }