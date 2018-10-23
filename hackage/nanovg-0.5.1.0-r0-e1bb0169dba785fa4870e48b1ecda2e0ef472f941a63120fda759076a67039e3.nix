{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "nanovg";
        version = "0.5.1.0";
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
      "nanovg" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
        libs = [
          (pkgs."GLU")
          (pkgs."GL")
          (pkgs."m")
          (pkgs."GLEW")
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
      exes = {
        "example00" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.gl)
            (hsPkgs.GLFW-b)
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
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.inline-c)
            (hsPkgs.nanovg)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }