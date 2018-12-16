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
        name = "simple-eval";
        version = "0.1.0.1";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "415fox@gmail.com";
      author = "Michael Fox";
      homepage = "https://github.com/gitfoxi/Language.Eval";
      url = "";
      synopsis = "Evaluate a Text to an Integer: \"1 + 1\" -> 2";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.parsec)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "Eval" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.simple-eval)
            (hsPkgs.text)
          ];
        };
      };
    };
  }