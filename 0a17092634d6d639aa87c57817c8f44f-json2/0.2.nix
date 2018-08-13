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
        name = "json2";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011 Yuriy Iskra";
      maintainer = "YuriyIskra  <iskra.yw@gmail.com>";
      author = "YuriyIskra  <iskra.yw@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "This library provides support for JSON.";
      description = "This library provides support for JSON.";
      buildType = "Simple";
    };
    components = {
      "json2" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }