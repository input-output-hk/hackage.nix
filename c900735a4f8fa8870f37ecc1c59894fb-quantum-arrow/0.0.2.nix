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
      specVersion = "0";
      identifier = {
        name = "quantum-arrow";
        version = "0.0.2";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "lrpalmer@gmail.com";
      author = "Luke Palmer";
      homepage = "";
      url = "";
      synopsis = "An embedding of quantum computation as a Haskell arrow";
      description = "";
      buildType = "Simple";
    };
    components = {
      "quantum-arrow" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.MonadRandom)
        ];
      };
    };
  }