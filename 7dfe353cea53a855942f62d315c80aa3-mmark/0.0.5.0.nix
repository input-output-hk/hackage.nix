{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "mmark";
          version = "0.0.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Karpov <markkarpov92@gmail.com>";
        author = "Mark Karpov <markkarpov92@gmail.com>";
        homepage = "https://github.com/mmark-md/mmark";
        url = "";
        synopsis = "Strict markdown processor for writers";
        description = "Strict markdown processor for writers.";
        buildType = "Simple";
      };
      components = {
        "mmark" = {
          depends  = (([
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.case-insensitive
            hsPkgs.containers
            hsPkgs.data-default-class
            hsPkgs.deepseq
            hsPkgs.dlist
            hsPkgs.email-validate
            hsPkgs.foldl
            hsPkgs.hashable
            hsPkgs.html-entity-map
            hsPkgs.lucid
            hsPkgs.megaparsec
            hsPkgs.microlens
            hsPkgs.microlens-th
            hsPkgs.modern-uri
            hsPkgs.mtl
            hsPkgs.parser-combinators
            hsPkgs.text
            hsPkgs.text-metrics
            hsPkgs.unordered-containers
            hsPkgs.yaml
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) hsPkgs.semigroups) ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.10")) hsPkgs.void) ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) hsPkgs.semigroups;
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.foldl
              hsPkgs.hspec
              hsPkgs.hspec-megaparsec
              hsPkgs.lucid
              hsPkgs.megaparsec
              hsPkgs.mmark
              hsPkgs.modern-uri
              hsPkgs.text
            ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) hsPkgs.semigroups;
          };
        };
        benchmarks = {
          "bench-speed" = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.mmark
              hsPkgs.text
            ];
          };
          "bench-memory" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mmark
              hsPkgs.text
              hsPkgs.weigh
            ];
          };
        };
      };
    }