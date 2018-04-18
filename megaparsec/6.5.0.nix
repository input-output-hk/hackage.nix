{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "megaparsec";
          version = "6.5.0";
        };
        license = "BSD-2-Clause";
        copyright = "";
        maintainer = "Mark Karpov <markkarpov92@gmail.com>";
        author = "Megaparsec contributors,\nPaolo Martini <paolo@nemail.it>,\nDaan Leijen <daan@microsoft.com>";
        homepage = "https://github.com/mrkkrp/megaparsec";
        url = "";
        synopsis = "Monadic parser combinators";
        description = "This is an industrial-strength monadic parser combinator library.\nMegaparsec is a feature-rich package that strikes a nice balance between\nspeed, flexibility, and quality of parse errors.";
        buildType = "Simple";
      };
      components = {
        megaparsec = {
          depends  = ([
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.mtl
            hsPkgs.parser-combinators
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.transformers
          ] ++ optionals (!compiler.isGhc) [
            hsPkgs.fail
            hsPkgs.semigroups
          ]) ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.void;
        };
        tests = {
          tests = {
            depends  = ([
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.hspec-expectations
              hsPkgs.megaparsec
              hsPkgs.mtl
              hsPkgs.scientific
              hsPkgs.text
              hsPkgs.transformers
            ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups) ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.void;
          };
        };
        benchmarks = {
          bench-speed = {
            depends  = ([
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.megaparsec
              hsPkgs.text
            ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups) ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.void;
          };
          bench-memory = {
            depends  = ([
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.megaparsec
              hsPkgs.text
              hsPkgs.weigh
            ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups) ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.void;
          };
        };
      };
    }