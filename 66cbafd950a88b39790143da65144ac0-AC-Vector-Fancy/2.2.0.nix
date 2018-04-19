{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "AC-Vector-Fancy";
          version = "2.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "MathematicalOrchid@hotmail.com";
        author = "Andrew Coppin";
        homepage = "";
        url = "";
        synopsis = "Fancy type-system stuff for AC-Vector";
        description = "Adds various type-system tricks to AC-Vector.\n(Requires several language extensions, including\ntype families.)\nNames updated to match AC-Vector. Gather modules are now\nhere instead of in AC-Vector, and some module names have\nchanged too for greater consistency. Added a new HasSpace\nclass for generically dealing with structures of\ndifferent dimensionallities (and updated everything else\nto use it).";
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