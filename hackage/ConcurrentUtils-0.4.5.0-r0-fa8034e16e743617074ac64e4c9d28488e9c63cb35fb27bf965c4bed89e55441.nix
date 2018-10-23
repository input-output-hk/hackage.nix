{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "ConcurrentUtils";
        version = "0.4.5.0";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "jacinablackbox@yahoo.com";
      author = "James Candy";
      homepage = "";
      url = "";
      synopsis = "Concurrent utilities";
      description = "Release notes for version 0.4.5.0:\n\n* The countA operation on .DataParallel didn't fuse very well. It has been replaced by a more general countA that generates a list of indices.\n\n* Removed most code for Channel library; it now passes through to Chan.";
      buildType = "Simple";
    };
    components = {
      "ConcurrentUtils" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.parallel)
          (hsPkgs.tagged)
          (hsPkgs.MonadRandom)
          (hsPkgs.monads-tf)
          (hsPkgs.list-extras)
          (hsPkgs.arrows)
          (hsPkgs.strict)
          (hsPkgs.monad-loops)
          (hsPkgs.stm)
          (hsPkgs.hashable)
          (hsPkgs.hashtables)
          (hsPkgs.ttrie)
        ];
      };
    };
  }