{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ascii-table";
        version = "0.3.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Sentenai, Inc.";
      maintainer = "mitchellwrosen@gmail.com";
      author = "Sentenai";
      homepage = "https://github.com/Sentenai/ascii-table#readme";
      url = "";
      synopsis = "ASCII table";
      description = "Draw an ASCII table";
      buildType = "Simple";
    };
    components = {
      "ascii-table" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.dlist)
          (hsPkgs.hashable)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.wl-pprint-extras)
        ];
      };
    };
  }