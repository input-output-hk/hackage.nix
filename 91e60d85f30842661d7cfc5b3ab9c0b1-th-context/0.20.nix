{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "th-context";
          version = "0.20";
        };
        license = "BSD-3-Clause";
        copyright = "(c) David Fox";
        maintainer = "David Fox <dsf@seereason.com>";
        author = "David Fox";
        homepage = "https://github.com/seereason/th-context";
        url = "";
        synopsis = "Test instance context";
        description = "Use these functions to decide an a not-quite naive fashion\nwhether an instance already exists that satisfies a given\ncontext.  This can be used to decide whether an instance\nneeds to be generated, as in th-reify-many.  Known limitation:\nthe instances inserted into the InstMap are not fully recognized\nwhen computing the context.";
        buildType = "Simple";
      };
      components = {
        "th-context" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.haskell-src-exts
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.syb
            hsPkgs.template-haskell
            hsPkgs.th-desugar
            hsPkgs.th-orphans
            hsPkgs.th-typegraph
          ];
        };
        tests = {
          "th-context-tests" = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.ghc-prim
              hsPkgs.hspec
              hsPkgs.hspec-core
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.syb
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.th-context
              hsPkgs.th-desugar
              hsPkgs.th-orphans
              hsPkgs.th-reify-many
              hsPkgs.th-typegraph
            ];
          };
        };
      };
    }