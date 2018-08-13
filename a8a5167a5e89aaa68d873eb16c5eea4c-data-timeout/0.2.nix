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
      specVersion = "1.6.0";
      identifier = {
        name = "data-timeout";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2011 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      maintainer = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      homepage = "https://github.com/mvv/data-timeout";
      url = "";
      synopsis = "64-bit timeouts of nanosecond precision";
      description = "This package provides data types and functions for working with 64-bit\ntimeouts of nanosecond precision.";
      buildType = "Simple";
    };
    components = {
      "data-timeout" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers-base)
        ];
      };
    };
  }