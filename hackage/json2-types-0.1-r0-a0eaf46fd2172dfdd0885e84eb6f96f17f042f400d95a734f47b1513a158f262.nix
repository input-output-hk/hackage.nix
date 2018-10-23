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
        name = "json2-types";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011 Yuriy Iskra";
      maintainer = "YuriyIskra  <iskra.yw@gmail.com>";
      author = "YuriyIskra";
      homepage = "";
      url = "";
      synopsis = "Defined JSON data types and\nfunction for renders JSON to string.";
      description = "1";
      buildType = "Simple";
    };
    components = {
      "json2-types" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }