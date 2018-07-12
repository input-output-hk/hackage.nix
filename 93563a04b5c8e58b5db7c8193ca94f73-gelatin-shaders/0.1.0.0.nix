{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gelatin-shaders";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Schell Scivally";
        maintainer = "schell@zyghost.com";
        author = "Schell Scivally";
        homepage = "https://github.com/schell/gelatin-shaders#readme";
        url = "";
        synopsis = "Gelatin's OpenGL shaders.";
        description = "Gelatin's OpenGL shaders. Please see README.md";
        buildType = "Simple";
      };
      components = {
        "gelatin-shaders" = {
          depends  = [
            hsPkgs.base
            hsPkgs.gelatin
            hsPkgs.bytestring
            hsPkgs.filepath
          ];
        };
      };
    }