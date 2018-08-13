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
        name = "hailgun-simple";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Dennis Gosnell";
      maintainer = "cdep.illabout@gmail.com";
      author = "Dennis Gosnell";
      homepage = "https://github.com/cdepillabout/hailgun-simple";
      url = "";
      synopsis = "Easy-to-use wrapper for the hailgun package";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "hailgun-simple" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.email-validate)
          (hsPkgs.hailgun)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
    };
  }