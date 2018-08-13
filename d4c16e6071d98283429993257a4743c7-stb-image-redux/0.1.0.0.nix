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
        name = "stb-image-redux";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Alexis Williams";
      maintainer = "sasinestro@gmail.com";
      author = "Alexis Williams";
      homepage = "https://github.com/sasinestro/stb-image-redux#readme";
      url = "";
      synopsis = "Image loading and writing microlibrary";
      description = "Please see README.md for more information.";
      buildType = "Simple";
    };
    components = {
      "stb-image-redux" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "stb-image-redux-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stb-image-redux)
            (hsPkgs.vector)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }