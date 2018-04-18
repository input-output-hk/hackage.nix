{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tasty-lens";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "j@dannynavarro.net";
        author = "Danny Navarro";
        homepage = "https://github.com/jdnavarro/tasty-lens";
        url = "";
        synopsis = "Tasty TestTrees for Lens validation";
        description = "Preassembled 'tasty' 'TestTree's for property testing @Lens@es, @Setter@s,\n@Traversal@s, @Iso@s and @Prism@s laws.";
        buildType = "Simple";
      };
      components = {
        tasty-lens = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.smallcheck
            hsPkgs.smallcheck-lens
            hsPkgs.tasty
            hsPkgs.tasty-smallcheck
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.tagged;
        };
        tests = {
          tasty = {
            depends  = [
              hsPkgs.base
              hsPkgs.lens
              hsPkgs.tasty
              hsPkgs.tasty-lens
            ];
          };
        };
      };
    }