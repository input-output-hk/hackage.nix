{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0";
      identifier = {
        name = "transformers-abort";
        version = "0.5.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2011 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      maintainer = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      homepage = "https://github.com/mvv/transformers-abort";
      url = "";
      synopsis = "A better error monad transformer";
      description = "This package provides a better error monad transformer for\nthe @transformers@ package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.semigroupoids)
          (hsPkgs.pointed)
          (hsPkgs.data-default-class)
          (hsPkgs.monad-control)
        ];
      };
    };
  }