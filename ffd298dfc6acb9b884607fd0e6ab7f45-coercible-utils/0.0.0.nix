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
      specVersion = "1.24";
      identifier = {
        name = "coercible-utils";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Simon Jakobi, chessai";
      maintainer = "simon.jakobi@gmail.com";
      author = "Simon Jakobi, chessai";
      homepage = "https://github.com/sjakobi/coercible-utils";
      url = "";
      synopsis = "Utility functions for Coercible types.";
      description = "Utility functions for Coercible types.";
      buildType = "Simple";
    };
    components = {
      "coercible-utils" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "coercible-utils-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.coercible-utils)
          ];
        };
      };
      benchmarks = {
        "coercible-utils-benchmark" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gauge)
            (hsPkgs.coercible-utils)
          ];
        };
      };
    };
  }