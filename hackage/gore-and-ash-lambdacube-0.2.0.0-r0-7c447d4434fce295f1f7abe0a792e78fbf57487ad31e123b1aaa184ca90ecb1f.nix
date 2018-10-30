{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "gore-and-ash-lambdacube";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Anton Gushcha";
      maintainer = "ncrashed@gmail.com";
      author = "Anton Gushcha";
      homepage = "https://github.com/TeaspotStudio/gore-and-ash-lambdacube#readme";
      url = "";
      synopsis = "Core module for Gore&Ash engine that do something.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.gore-and-ash)
          (hsPkgs.hashable)
          (hsPkgs.lambdacube-compiler)
          (hsPkgs.lambdacube-gl)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "gore-and-ash-lambdacube-example01" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.exceptions)
            (hsPkgs.GLFW-b)
            (hsPkgs.gore-and-ash)
            (hsPkgs.gore-and-ash-glfw)
            (hsPkgs.gore-and-ash-lambdacube)
            (hsPkgs.JuicyPixels)
            (hsPkgs.lambdacube-compiler)
            (hsPkgs.lambdacube-gl)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.vector)
          ];
        };
        "gore-and-ash-lambdacube-example02" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.exceptions)
            (hsPkgs.GLFW-b)
            (hsPkgs.gore-and-ash)
            (hsPkgs.gore-and-ash-glfw)
            (hsPkgs.gore-and-ash-lambdacube)
            (hsPkgs.JuicyPixels)
            (hsPkgs.lambdacube-compiler)
            (hsPkgs.lambdacube-gl)
            (hsPkgs.lambdacube-ir)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.linear)
          ];
        };
        "gore-and-ash-lambdacube-example03" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.exceptions)
            (hsPkgs.GLFW-b)
            (hsPkgs.gore-and-ash)
            (hsPkgs.gore-and-ash-glfw)
            (hsPkgs.gore-and-ash-lambdacube)
            (hsPkgs.JuicyPixels)
            (hsPkgs.lambdacube-compiler)
            (hsPkgs.lambdacube-gl)
            (hsPkgs.lambdacube-ir)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.linear)
          ];
        };
        "gore-and-ash-lambdacube-example04" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.exceptions)
            (hsPkgs.GLFW-b)
            (hsPkgs.gore-and-ash)
            (hsPkgs.gore-and-ash-glfw)
            (hsPkgs.gore-and-ash-lambdacube)
            (hsPkgs.JuicyPixels)
            (hsPkgs.lambdacube-compiler)
            (hsPkgs.lambdacube-gl)
            (hsPkgs.lambdacube-ir)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.linear)
          ];
        };
      };
    };
  }