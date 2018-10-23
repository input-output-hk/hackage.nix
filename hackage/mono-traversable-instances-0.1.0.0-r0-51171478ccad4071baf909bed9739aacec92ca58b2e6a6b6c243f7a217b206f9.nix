{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "mono-traversable-instances";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@fpcomplete.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/mono-traversable#readme";
      url = "";
      synopsis = "Extra typeclass instances for mono-traversable";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "mono-traversable-instances" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mono-traversable)
          (hsPkgs.semigroupoids)
          (hsPkgs.comonad)
          (hsPkgs.vector-instances)
          (hsPkgs.dlist)
          (hsPkgs.dlist-instances)
          (hsPkgs.transformers)
          (hsPkgs.semigroups)
          (hsPkgs.containers)
        ];
      };
    };
  }