{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "gl-capture";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "";
      url = "";
      synopsis = "simple image capture from OpenGL";
      description = "Simplify image capture from OpenGL to ByteString in PPM P6 format.";
      buildType = "Simple";
    };
    components = {
      "gl-capture" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.OpenGL)
        ];
      };
    };
  }