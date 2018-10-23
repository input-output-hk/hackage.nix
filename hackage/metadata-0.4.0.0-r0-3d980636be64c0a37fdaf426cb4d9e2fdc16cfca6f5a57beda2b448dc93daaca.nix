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
        name = "metadata";
        version = "0.4.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cutsea110@gmail.com";
      author = "cutsea110";
      homepage = "https://github.com/cutsea110/metadata";
      url = "";
      synopsis = "metadata library for semantic web";
      description = "";
      buildType = "Simple";
    };
    components = {
      "metadata" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
    };
  }