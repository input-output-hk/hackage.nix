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
      specVersion = "1.8";
      identifier = {
        name = "ActionKid";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bluemangroupie@gmail.com";
      author = "Aditya Bhargava";
      homepage = "http://adit.io";
      url = "";
      synopsis = "An easy-to-use video game framework for Haskell.";
      description = "See examples and full readme on the Github page: https:\\/\\/github.com\\/egonSchiele\\/actionkid";
      buildType = "Simple";
    };
    components = {
      "ActionKid" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.gloss)
          (hsPkgs.StateVar)
          (hsPkgs.lens)
          (hsPkgs.gloss-juicy)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.JuicyPixels)
          (hsPkgs.JuicyPixels-repa)
          (hsPkgs.containers)
          (hsPkgs.OpenGL)
        ];
      };
      exes = {
        "actionkid" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gloss)
            (hsPkgs.StateVar)
            (hsPkgs.lens)
            (hsPkgs.gloss-juicy)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.JuicyPixels)
            (hsPkgs.JuicyPixels-repa)
            (hsPkgs.containers)
            (hsPkgs.OpenGL)
          ];
        };
      };
      tests = {
        "test-actionkid" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.ActionKid)
          ];
        };
      };
    };
  }