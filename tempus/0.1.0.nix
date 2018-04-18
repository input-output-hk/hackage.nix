{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "tempus";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(C) 2010, Matthias Reisner";
        maintainer = "Matthias Reisner <matthias.reisner@googlemail.com>";
        author = "Matthias Reisner";
        homepage = "";
        url = "";
        synopsis = "Interpreter for the FRP language Tempus";
        description = "This package provides an interactive console application for loading of modules,\ndefinition of types and values, as well as type checking and evaluation of\nexpressions in the functional reactive language Tempus.";
        buildType = "Simple";
      };
      components = {
        exes = {
          tempus = {
            depends  = [
              hsPkgs.mtl
              hsPkgs.uniplate
              hsPkgs.array
              hsPkgs.utf8-string
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.haskeline
              hsPkgs.executable-path
            ] ++ [ hsPkgs.base ];
          };
        };
      };
    }