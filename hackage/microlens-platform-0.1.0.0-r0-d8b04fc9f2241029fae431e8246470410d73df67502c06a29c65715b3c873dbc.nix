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
        name = "microlens-platform";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Artyom <yom@artyom.me>";
      author = "Artyom";
      homepage = "http://github.com/aelve/microlens";
      url = "";
      synopsis = "Feature-complete microlens";
      description = "This package exports a module which is the recommended starting point for using <http://hackage.haskell.org/package/microlens microlens> if you aren't trying to keep your dependencies minimal. By importing @Lens.Micro.Platform@ you get all functions and instances from <http://hackage.haskell.org/package/microlens microlens>, <http://hackage.haskell.org/package/microlens-mtl microlens-mtl>, <http://hackage.haskell.org/package/microlens-ghc microlens-ghc>, as well as instances for @Vector@, @Text@, and @HashMap@.\n\nThis package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/aelve/microlens#readme on Github>.";
      buildType = "Simple";
    };
    components = {
      "microlens-platform" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hashable)
          (hsPkgs.microlens)
          (hsPkgs.microlens-ghc)
          (hsPkgs.microlens-mtl)
          (hsPkgs.microlens-th)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
    };
  }