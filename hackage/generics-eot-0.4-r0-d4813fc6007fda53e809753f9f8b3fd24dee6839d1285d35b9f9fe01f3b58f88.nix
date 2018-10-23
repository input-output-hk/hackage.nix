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
        name = "generics-eot";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "soenkehahn@gmail.com";
      author = "";
      homepage = "https://generics-eot.readthedocs.io/";
      url = "";
      synopsis = "A library for generic programming that aims to be easy to understand";
      description = "Documentation is here: <https://generics-eot.readthedocs.io/>";
      buildType = "Simple";
    };
    components = {
      "generics-eot" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "quickcheck" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.interpolate)
            (hsPkgs.mockery)
            (hsPkgs.shake)
            (hsPkgs.silently)
          ];
        };
        "spec" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.hspec)
            (hsPkgs.interpolate)
            (hsPkgs.markdown-unlit)
          ];
        };
      };
    };
  }