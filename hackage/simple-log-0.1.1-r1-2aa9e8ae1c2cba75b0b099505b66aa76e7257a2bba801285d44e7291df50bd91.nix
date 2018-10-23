{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "simple-log";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "voidex@live.com";
      author = "Alexandr `Voidex` Ruchkin";
      homepage = "http://github.com/mvoidex/simple-log";
      url = "";
      synopsis = "Simple log for Haskell";
      description = "Log library for Haskell with removing unnecessary traces";
      buildType = "Simple";
    };
    components = {
      "simple-log" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.old-locale)
          (hsPkgs.directory)
          (hsPkgs.transformers)
          (hsPkgs.MonadCatchIO-transformers)
          (hsPkgs.mtl)
        ];
      };
    };
  }