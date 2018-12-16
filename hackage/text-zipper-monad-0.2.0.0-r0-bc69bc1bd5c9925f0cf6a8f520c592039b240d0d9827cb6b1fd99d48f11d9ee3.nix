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
        name = "text-zipper-monad";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "BSD3";
      maintainer = "kwangyul.seo@gmail.com";
      author = "Kwang Yul Seo";
      homepage = "https://github.com/kseo/text-zipper-monad#readme";
      url = "";
      synopsis = "Monadic interface to the text-zipper package";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.text-zipper)
        ];
      };
      tests = {
        "text-zipper-monad-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.text-zipper)
            (hsPkgs.text-zipper-monad)
          ];
        };
      };
    };
  }