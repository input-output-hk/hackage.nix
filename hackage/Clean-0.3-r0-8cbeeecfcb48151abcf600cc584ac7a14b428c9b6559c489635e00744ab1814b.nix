{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "Clean";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "marc.coiffier@gmail.com";
      author = "Marc Coiffier";
      homepage = "";
      url = "";
      synopsis = "A light, clean and powerful utility library";
      description = "A collection of the most useful stuff I've found cleaned up\nand bundled in one convenient location";
      buildType = "Simple";
    };
    components = {
      "Clean" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }