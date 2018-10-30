{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "fcache";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Yu Li";
      maintainer = "ylilarry@gmail.com";
      author = "Yu Li";
      homepage = "http://github.com/ylilarry/fcache#readme";
      url = "";
      synopsis = "Cache a function (a -> b)";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.containers)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "fcache-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fcache)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }