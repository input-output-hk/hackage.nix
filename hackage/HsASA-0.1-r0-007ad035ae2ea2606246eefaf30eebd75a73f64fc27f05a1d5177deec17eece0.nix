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
      specVersion = "1.2";
      identifier = {
        name = "HsASA";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "John Meacham";
      homepage = "http://repetae.net/recent/out/HsASA.html";
      url = "";
      synopsis = "A haskell interface to Lester Ingber's adaptive simulating annealing code";
      description = "A haskell interface to Lester Ingber's adaptive simulating annealing code";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.haskell98)
        ];
      };
    };
  }