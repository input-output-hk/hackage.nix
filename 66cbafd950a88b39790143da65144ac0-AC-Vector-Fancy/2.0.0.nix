{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "AC-Vector-Fancy";
          version = "2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "MathematicalOrchid@hotmail.com";
        author = "Andrew Coppin";
        homepage = "";
        url = "";
        synopsis = "Fancy type system stuff for AC-Vector";
        description = "Adds various type system tricks to AC-Vector.\n(Requires several language extensions, including\ntype families.)";
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