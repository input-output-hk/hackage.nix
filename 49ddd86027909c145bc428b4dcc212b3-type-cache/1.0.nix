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
        name = "type-cache";
        version = "1.0";
      };
      license = "Apache-2.0";
      copyright = "Copyright (C) 2016 Wojciech Danilo";
      maintainer = "Wojciech Danilo <wojciech.danilo@gmail.com>";
      author = "Wojciech Danilo";
      homepage = "https://github.com/wdanilo/type-cache";
      url = "";
      synopsis = "Utilities for caching type families results. Sometimes complex type families take long time to compile, so it is proficient to cache them and use the final result without the need of re-computation.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "type-cache" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.lens)
          (hsPkgs.lens-utils)
          (hsPkgs.containers)
        ];
      };
    };
  }