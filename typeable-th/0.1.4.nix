{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "typeable-th";
          version = "0.1.4";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2013 Benno Fünfstück";
        maintainer = "benno.fuenfstueck@gmail.com";
        author = "Benno Fünfstück";
        homepage = "http://github.com/bennofs/typeable-th";
        url = "";
        synopsis = "Automatic deriving of TypeableN instances with Template Haskell";
        description = "This package provides template haskell functions for deriving\nTypeableN instances for types of every kind, selecting the best\nN that is possible.";
        buildType = "Simple";
      };
      components = {
        typeable-th = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.transformers
          ];
        };
        tests = {
          compile-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.typeable-th
            ];
          };
        };
      };
    }