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
      specVersion = "1.6";
      identifier = {
        name = "mwc-random-monad";
        version = "0.7.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexey Khudyakov <alexey.skladnoy@gmail.com>";
      author = "Alexey Khudyakov <alexey.skladnoy@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Monadic interface for mwc-random";
      description = "Simple monadic interface for mwc-random.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.primitive)
          (hsPkgs.monad-primitive)
          (hsPkgs.vector)
          (hsPkgs.mwc-random)
        ];
      };
    };
  }