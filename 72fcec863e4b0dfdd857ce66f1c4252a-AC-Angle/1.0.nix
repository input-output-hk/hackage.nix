{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "AC-Angle";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "MathematicalOrchid@hotmail.com";
        author = "Andrew Coppin";
        homepage = "";
        url = "";
        synopsis = "Angles in degrees and radians.";
        description = "A simple little library for dealing with geometric angles.";
        buildType = "Simple";
      };
      components = {
        AC-Angle = {
          depends  = [ hsPkgs.base ];
        };
      };
    }