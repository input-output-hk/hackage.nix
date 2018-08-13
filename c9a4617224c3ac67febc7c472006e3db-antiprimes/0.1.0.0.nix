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
      specVersion = "1.10";
      identifier = {
        name = "antiprimes";
        version = "0.1.0.0";
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
      "antiprimes" = {
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