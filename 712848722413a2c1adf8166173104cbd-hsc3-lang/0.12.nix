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
      specVersion = "1.8";
      identifier = {
        name = "hsc3-lang";
        version = "0.12";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2007-2012";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/?t=hsc3-lang";
      url = "";
      synopsis = "Haskell SuperCollider Language";
      description = "Haskell library defining operations from the\nSuperCollider language class library";
      buildType = "Simple";
    };
    components = {
      "hsc3-lang" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.hmatrix-special)
          (hsPkgs.hosc)
          (hsPkgs.hsc3)
          (hsPkgs.MonadRandom)
          (hsPkgs.mtl)
          (hsPkgs.split)
          (hsPkgs.random)
          (hsPkgs.random-shuffle)
          (hsPkgs.transformers)
        ];
      };
    };
  }