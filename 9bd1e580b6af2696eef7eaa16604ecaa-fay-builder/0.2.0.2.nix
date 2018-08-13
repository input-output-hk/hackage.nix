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
      specVersion = "1.10";
      identifier = {
        name = "fay-builder";
        version = "0.2.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2013 Silk B.V.";
      maintainer = "code@silk.co";
      author = "Silk B.V.";
      homepage = "";
      url = "";
      synopsis = "Compile Fay code on cabal install, and ad-hoc recompile during development";
      description = "Compile Fay code on cabal install, and ad-hoc recompile during development";
      buildType = "Simple";
    };
    components = {
      "fay-builder" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.fay)
          (hsPkgs.filepath)
          (hsPkgs.safe)
          (hsPkgs.split)
          (hsPkgs.text)
        ];
      };
    };
  }