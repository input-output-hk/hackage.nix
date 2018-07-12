{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "mecha";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Tom Hawkins <tomahawkins@gmail.com>";
        author = "Tom Hawkins <tomahawkins@gmail.com>";
        homepage = "http://tomahawkins.org";
        url = "";
        synopsis = "A constructive solid geometry (CSG) modeling language.";
        description = "Mecha is a constructive solid geometry modeling language\nand compiles to POV-Ray and OpenSCAD.";
        buildType = "Simple";
      };
      components = {
        "mecha" = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          "mecha-examples" = {};
        };
      };
    }