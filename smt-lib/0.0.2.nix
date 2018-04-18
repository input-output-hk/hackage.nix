{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "smt-lib";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Tom Hawkins <tomahawkins@gmail.com>";
        author = "Tom Hawkins <tomahawkins@gmail.com>";
        homepage = "http://tomahawkins.org";
        url = "";
        synopsis = "Parsing and printing SMT-LIB.";
        description = "SMT-LIB is a common language used by many SMT solvers.\nThis library provides an SMT-LIB AST with parsing and printing utilities.";
        buildType = "Simple";
      };
      components = {
        smt-lib = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.array
            hsPkgs.polyparse
          ];
        };
      };
    }