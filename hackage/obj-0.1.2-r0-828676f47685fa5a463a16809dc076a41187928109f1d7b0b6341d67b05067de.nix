{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "obj"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas Davie (tom.davie@gmail.com)";
      author = "Thomas Davie";
      homepage = "";
      url = "";
      synopsis = "Reads and writes obj models.";
      description = "Reads and writes obj models.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.QuickCheck)
          (hsPkgs.graphicsFormats)
          (hsPkgs.OpenGL)
          (hsPkgs.checkers)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.OpenGLCheck)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.Codec-Image-DevIL)
          (hsPkgs.InfixApplicative)
          ];
        };
      };
    }