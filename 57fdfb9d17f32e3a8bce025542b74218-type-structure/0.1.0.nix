{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "type-structure";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "(c) 2014, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/type-structure";
        url = "";
        synopsis = "Type structure analysis";
        description = "Provides facilities to match type structures.\nUseful for checking protocol compliance in client-server applications.";
        buildType = "Simple";
      };
      components = {
        type-structure = {
          depends  = [
            hsPkgs.time
            hsPkgs.vector
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.hashable
            hsPkgs.unordered-containers
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.loch-th
            hsPkgs.placeholders
            hsPkgs.th-instance-reification
            hsPkgs.template-haskell
            hsPkgs.base
          ];
        };
        tests = {
          type-structure-htf-test-suite = {
            depends  = [
              hsPkgs.quickcheck-instances
              hsPkgs.QuickCheck-GenT
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.HTF
              hsPkgs.time
              hsPkgs.vector
              hsPkgs.array
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.hashable
              hsPkgs.unordered-containers
              hsPkgs.containers
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.loch-th
              hsPkgs.placeholders
              hsPkgs.th-instance-reification
              hsPkgs.template-haskell
              hsPkgs.base
            ];
          };
        };
      };
    }