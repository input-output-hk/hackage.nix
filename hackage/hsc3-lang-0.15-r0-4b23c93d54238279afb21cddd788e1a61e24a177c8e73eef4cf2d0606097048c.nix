{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hsc3-lang"; version = "0.15"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2007-2014";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/t/hsc3-lang";
      url = "";
      synopsis = "Haskell SuperCollider Language";
      description = "Haskell library defining operations from the\nSuperCollider language class library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.data-ordlist)
          (hsPkgs.dlist)
          (hsPkgs.hashable)
          (hsPkgs.hmatrix-special)
          (hsPkgs.hosc)
          (hsPkgs.hsc3)
          (hsPkgs.MonadRandom)
          (hsPkgs.transformers)
          (hsPkgs.split)
          (hsPkgs.random)
          (hsPkgs.random-shuffle)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          ];
        };
      };
    }