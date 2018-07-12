{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "mecha";
          version = "0.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Tom Hawkins <tomahawkins@gmail.com>";
        author = "Tom Hawkins <tomahawkins@gmail.com>";
        homepage = "http://tomahawkins.org";
        url = "";
        synopsis = "Mecha is a solid modeling language geared for machine design.";
        description = "Mecha is a constructive solid modeling language based on\nfunctional-representation primitives.";
        buildType = "Simple";
      };
      components = {
        "mecha" = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
            hsPkgs.digest
            hsPkgs.bytestring
            hsPkgs.directory
          ];
        };
        exes = {
          "mecha-csg" = {};
          "mecha-bent-axis" = {};
        };
      };
    }