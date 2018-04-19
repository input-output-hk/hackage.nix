{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "shared-fields";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "fraser.m.murray@gmail.com";
        author = "Fraser Murray";
        homepage = "http://github.com/intolerable/shared-fields";
        url = "";
        synopsis = "a tiny library for using shared lens fields";
        description = "a pair of template haskell functions for generating fields that are shared between modules. normally with lens' makeFields function, you get clashing classes between modules, but with shared-fields you can create just the class definitions in another file and then import them to keep the classes consistent.";
        buildType = "Simple";
      };
      components = {
        shared-fields = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.hspec
              hsPkgs.lens
              hsPkgs.shared-fields
              hsPkgs.text
            ];
          };
        };
      };
    }