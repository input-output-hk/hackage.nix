{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "simple-log";
        version = "0.3.3";
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
          (hsPkgs.async)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.MonadCatchIO-transformers)
          (hsPkgs.mtl)
          (hsPkgs.SafeSemaphore)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ];
      };
    };
  }