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
        name = "canteven-template";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "eglassercamp@sumall.com";
      author = "Ethan Glasser-Camp";
      homepage = "https://github.com/SumAll/haskell-canteven-template/";
      url = "";
      synopsis = "A few utilites and helpers for using Template Haskell in your projects.";
      description = "Provides a few \"batteries included\" functions for doing common things with Template Haskell.\nIn particular, adds 'readFileAsStrLiteral', which lets you use TH to access on-disk files at compile time.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.markdown)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
        ];
      };
    };
  }