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
        name = "secd";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "BSD-3-Clause";
      maintainer = "kwangyul.seo@gmail.com";
      author = "Kwang Yul Seo";
      homepage = "http://github.com/kseo/secd#readme";
      url = "";
      synopsis = "A Haskell implementation of the SECD abstract machine";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
        ];
      };
      exes = {
        "secdi" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskeline)
            (hsPkgs.secd)
          ];
        };
      };
      tests = {
        "secd-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.secd)
          ];
        };
      };
    };
  }