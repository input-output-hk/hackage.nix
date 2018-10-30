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
        name = "yabi-muno";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "tenorbiel@gmail.com";
      author = "Tenor Biel";
      homepage = "";
      url = "";
      synopsis = "Yet Another Brainfuck Interpreter";
      description = "Yet Another Brainfuck Interpreter for muno";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl-compat)
          (hsPkgs.mtl)
          (hsPkgs.lens)
          (hsPkgs.containers)
          (hsPkgs.parsec)
          (hsPkgs.bytestring)
        ];
      };
      exes = {
        "yabi" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.parsec)
            (hsPkgs.yabi-muno)
          ];
        };
      };
    };
  }