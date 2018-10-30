{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Southpaw";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "jonatanhsundqvist@gmail.com";
      author = "Jonatan H Sundqvist";
      homepage = "";
      url = "";
      synopsis = "Assorted utility modules";
      description = "Various unrelated utility modules.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.Win32)
          (hsPkgs.OpenGL)
          (hsPkgs.GLFW-b)
          (hsPkgs.filepath)
          (hsPkgs.gtk3)
          (hsPkgs.cairo)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
          (hsPkgs.ALUT)
          (hsPkgs.OpenAL)
          (hsPkgs.JuicyPixels)
        ];
      };
    };
  }