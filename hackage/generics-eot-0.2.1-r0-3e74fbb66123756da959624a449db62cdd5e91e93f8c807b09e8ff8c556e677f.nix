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
        name = "generics-eot";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "soenkehahn@gmail.com";
      author = "";
      homepage = "https://github.com/soenkehahn/generics-eot#readme";
      url = "";
      synopsis = "A library for generic programming that aims to be easy to understand";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.markdown-unlit)
        ];
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.markdown-unlit)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.interpolate)
            (hsPkgs.doctest)
          ];
        };
        "quickcheck" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.markdown-unlit)
            (hsPkgs.hspec)
            (hsPkgs.mockery)
            (hsPkgs.interpolate)
            (hsPkgs.shake)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }