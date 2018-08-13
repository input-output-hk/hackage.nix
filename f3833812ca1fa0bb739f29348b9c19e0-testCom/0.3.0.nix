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
        name = "testCom";
        version = "0.3.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "nobrakal@cthugha.org";
      author = "Alexandre Moine";
      homepage = "";
      url = "";
      synopsis = "Write your tests in comments";
      description = "With some TemplateHaskell magic, you can write your tests in your comments directly above a function declaration with a minimalistic syntax.";
      buildType = "Simple";
    };
    components = {
      "testCom" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.random)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.template-haskell)
            (hsPkgs.haskell-src-meta)
            (hsPkgs.random)
          ];
        };
      };
    };
  }