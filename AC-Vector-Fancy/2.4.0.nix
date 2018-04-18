{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "AC-Vector-Fancy";
          version = "2.4.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "MathematicalOrchid@hotmail.com";
        author = "Andrew Coppin";
        homepage = "";
        url = "";
        synopsis = "Fancy type-system stuff for AC-Vector";
        description = "Adds various type-system tricks to AC-Vector.\n(Requires several language extensions, including\ntype families.)\nAdded missing @Vector Point@ constraint to @HasSpace@\nclass. Consequently removed @HasSpace Range@ instance.\nAdded @unions@ method to @BoundingBox@ class. Added\n@axis_range@ function.";
        buildType = "Simple";
      };
      components = {
        AC-Vector-Fancy = {
          depends  = [
            hsPkgs.base
            hsPkgs.AC-Angle
            hsPkgs.AC-Vector
          ];
        };
      };
    }