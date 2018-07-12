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
          name = "stache";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Karpov <markkarpov92@gmail.com>";
        author = "Mark Karpov <markkarpov92@gmail.com>";
        homepage = "https://github.com/stackbuilders/stache";
        url = "";
        synopsis = "Mustache templates for Haskell";
        description = "Mustache templates for Haskell.";
        buildType = "Simple";
      };
      components = {
        "stache" = {
          depends  = ([
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.megaparsec
            hsPkgs.mtl
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.10")) hsPkgs.void) ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) hsPkgs.semigroups;
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.hspec-megaparsec
              hsPkgs.megaparsec
              hsPkgs.stache
              hsPkgs.text
            ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) hsPkgs.semigroups;
          };
          "mustache-spec" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.file-embed
              hsPkgs.hspec
              hsPkgs.megaparsec
              hsPkgs.stache
              hsPkgs.text
              hsPkgs.yaml
            ];
          };
        };
        benchmarks = {
          "bench" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.megaparsec
              hsPkgs.stache
              hsPkgs.text
            ];
          };
        };
      };
    }