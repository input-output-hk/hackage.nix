{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dot";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Andrew Martin";
        maintainer = "andrew.thaddeus@gmail.com";
        author = "Andrew Martin";
        homepage = "https://github.com/andrewthad/dot#readme";
        url = "";
        synopsis = "Data types and encoding for graphviz dot files";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        dot = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.impure-containers
          ];
        };
      };
    }