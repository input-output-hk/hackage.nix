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
        name = "Parallel-Arrows-ParMonad";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Martin Braun";
      author = "";
      homepage = "https://github.com/s4ke/Parrows#readme";
      url = "";
      synopsis = "Par Monad (@monad-par@) based backend for @Parallel-Arrows-Definition@.";
      description = "Par Monad (@monad-par@) based backend for @Parallel-Arrows-Definition@. Use this backend for shared-memory programs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.Parallel-Arrows-Definition)
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.monad-par)
          (hsPkgs.split)
        ];
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.Parallel-Arrows-BaseSpec)
            (hsPkgs.Parallel-Arrows-Definition)
            (hsPkgs.Parallel-Arrows-ParMonad)
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.hspec)
            (hsPkgs.monad-par)
            (hsPkgs.split)
          ];
        };
      };
    };
  }