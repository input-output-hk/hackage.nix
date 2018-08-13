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
        name = "ascii-table";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Sentenai, Inc.";
      maintainer = "mitchellwrosen@gmail.com";
      author = "Sentenai";
      homepage = "https://github.com/Sentenai/ascii-table#readme";
      url = "";
      synopsis = "ASCII table";
      description = "ASCII table";
      buildType = "Simple";
    };
    components = {
      "ascii-table" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.dlist)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.wl-pprint-extras)
        ];
      };
    };
  }