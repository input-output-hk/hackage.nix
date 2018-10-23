{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hjson-query";
        version = "1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2010 Yuriy Iskra";
      maintainer = "";
      author = "YuriyIskra";
      homepage = "";
      url = "";
      synopsis = "library for querying from JSON";
      description = "library(HXT-like) for querying from JSON";
      buildType = "Simple";
    };
    components = {
      "hjson-query" = {
        depends  = [
          (hsPkgs.hjson)
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }