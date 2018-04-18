{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "butterflies";
          version = "0.3.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "(C) 2013,2015  Claude Heiland-Allen <claude@mathr.co.uk>";
        maintainer = "claude@mathr.co.uk";
        author = "Claude Heiland-Allen";
        homepage = "http://code.mathr.co.uk/butterflies";
        url = "";
        synopsis = "butterfly tilings";
        description = "various tilings with butterflies (after M C Escher 1950)";
        buildType = "Simple";
      };
      components = {
        butterflies = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          butterflies-flat = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.OpenGLRaw
              hsPkgs.OpenGLRaw21
              hsPkgs.GLUT
              hsPkgs.gl-capture
              hsPkgs.repa
              hsPkgs.repa-devil
              hsPkgs.butterflies
            ];
          };
        };
      };
    }