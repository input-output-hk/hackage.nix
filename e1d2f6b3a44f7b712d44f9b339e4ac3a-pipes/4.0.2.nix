{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      haskell98 = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pipes";
          version = "4.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2012, 2013 Gabriel Gonzalez";
        maintainer = "Gabriel439@gmail.com";
        author = "Gabriel Gonzalez";
        homepage = "";
        url = "";
        synopsis = "Compositional pipelines";
        description = "`pipes` is a clean and powerful stream processing library that lets you build\nand connect reusable streaming components\n\nAdvantages over traditional streaming libraries:\n\n* /Concise API/: Use simple commands like 'for', ('>->'), 'await', and 'yield'\n\n* /Blazing fast/: Implementation tuned for speed\n\n* /Lightweight Dependency/: @pipes@ is small and compiles very rapidly,\nincluding dependencies\n\n* /Elegant semantics/: Use practical category theory\n\n* /ListT/: Correct implementation of 'ListT' that interconverts with pipes\n\n* /Bidirectionality/: Implement duplex channels\n\n* /Extensive Documentation/: Second to none!\n\nImport \"Pipes\" to use the library.\n\nRead \"Pipes.Tutorial\" for an extensive tutorial.";
        buildType = "Simple";
      };
      components = {
        "pipes" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.void
          ] ++ pkgs.lib.optionals (!_flags.haskell98) [
            hsPkgs.mmorph
            hsPkgs.mtl
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.pipes
              hsPkgs.QuickCheck
              hsPkgs.mtl
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.transformers
            ];
          };
        };
        benchmarks = {
          "prelude-benchmarks" = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.mtl
              hsPkgs.pipes
            ];
          };
          "lift-benchmarks" = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.mtl
              hsPkgs.pipes
              hsPkgs.transformers
            ];
          };
        };
      };
    }