{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "qd";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "claudiusmaximus@goto10.org";
        author = "Claude Heiland-Allen";
        homepage = "";
        url = "";
        synopsis = "double-double and quad-double type via libqd";
        description = "This package supports both a double-double datatype (approx. 32 decimal digits)\nand a quad-double datatype (approx. 64 decimal digits), using libqd (which is\nimplemented in C++ with C and Fortran wrappers).";
        buildType = "Simple";
      };
      components = {
        qd = {
          depends  = [ hsPkgs.base ];
          libs = [ pkgs.qd ];
        };
      };
    }