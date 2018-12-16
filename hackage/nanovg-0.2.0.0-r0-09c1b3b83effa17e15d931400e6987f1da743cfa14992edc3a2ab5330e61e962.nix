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
        name = "nanovg";
        version = "0.2.0.0";
      };
      license = "ISC";
      copyright = "2016 Moritz Kiefer";
      maintainer = "moritz.kiefer@purelyfunctional.org";
      author = "Moritz Kiefer";
      homepage = "https://github.com/cocreature/nanovg-hs";
      url = "";
      synopsis = "Haskell bindings for nanovg";
      description = "Raw bindings to the OpenGL vector graphics library NanoVG";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.linear)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
        libs = [
          (pkgs."GLU")
          (pkgs."GL")
          (pkgs."m")
          (pkgs."GLEW")
        ];
      };
      exes = {
        "example00" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.gl)
            (hsPkgs.GLFW-b)
            (hsPkgs.linear)
            (hsPkgs.monad-loops)
            (hsPkgs.nanovg)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.vector)
          ];
        };
      };
      tests = {
        "nanovg-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.inline-c)
            (hsPkgs.linear)
            (hsPkgs.nanovg)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }