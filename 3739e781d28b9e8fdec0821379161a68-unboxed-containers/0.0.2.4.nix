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
      specVersion = "1.6";
      identifier = {
        name = "unboxed-containers";
        version = "0.0.2.4";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/unboxed-containers";
      url = "";
      synopsis = "Self-optimizing unboxed sets using view patterns and data families";
      description = "Self-optimizing unboxed sets using view patterns and data families";
      buildType = "Simple";
    };
    components = {
      "unboxed-containers" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }