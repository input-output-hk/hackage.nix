{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "workflow-windows";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Spiros Boosalis";
        maintainer = "samboosalis@gmail.com";
        author = "Spiros Boosalis";
        homepage = "http://github.com/sboosali/workflow-windows#readme";
        url = "";
        synopsis = "Automate keyboard/mouse/clipboard/application interaction.";
        description = "see http://github.com/sboosali/workflow-windows#readme for\ndocumentation and examples.";
        buildType = "Simple";
      };
      components = {
        workflow-windows = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.workflow-types
            hsPkgs.free
            hsPkgs.c-storable-deriving
            hsPkgs.StateVar
          ];
        };
        exes = {
          workflow-windows-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.workflow-windows
            ];
          };
        };
        tests = {
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.workflow-windows
              hsPkgs.doctest
            ];
          };
          unittest = {
            depends  = [
              hsPkgs.base
              hsPkgs.workflow-windows
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }