{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0";
      identifier = {
        name = "monad-abort-fd";
        version = "0.5";
      };
      license = "BSD-3-Clause";
      copyright = "2011 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      maintainer = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      homepage = "https://github.com/mvv/monad-abort-fd";
      url = "";
      synopsis = "A better error monad transformer";
      description = "This package provides automated lifting of operations via functional\ndependencies for the @transformers-abort@ package.";
      buildType = "Simple";
    };
    components = {
      "monad-abort-fd" = {
        depends  = [
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.transformers-abort)
          (hsPkgs.mtl)
          (hsPkgs.monad-control)
        ] ++ (if compiler.isGhc && compiler.version.ge "7.7"
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
            (hsPkgs.tagged)
          ]);
      };
    };
  }