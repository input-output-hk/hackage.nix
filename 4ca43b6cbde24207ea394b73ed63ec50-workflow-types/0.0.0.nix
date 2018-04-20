{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "workflow-types";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Spiros Boosalis";
        maintainer = "samboosalis@gmail.com";
        author = "Spiros Boosalis";
        homepage = "http://github.com/sboosali/workflow-types#readme";
        url = "";
        synopsis = "Automate keyboard\\/mouse\\/clipboard\\/application interaction.";
        description = "TODO";
        buildType = "Simple";
      };
      components = {
        workflow-types = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.semigroups
            hsPkgs.split
            hsPkgs.free
            hsPkgs.comonad
            hsPkgs.exceptions
            hsPkgs.Earley
          ];
        };
        exes = {
          workflow-types-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.workflow-types
            ];
          };
        };
      };
    }