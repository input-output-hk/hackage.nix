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
      specVersion = "1.10";
      identifier = {
        name = "antiprimes";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) wolfkibe";
      maintainer = "wolfkibe@gmail.com";
      author = "Wolfgang Kittenberger";
      homepage = "https://github.com/wokibe/antiprimes#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.primes)
        ];
      };
      tests = {
        "antiprimes-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.antiprimes)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }