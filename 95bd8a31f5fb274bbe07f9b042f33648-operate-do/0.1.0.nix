{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      test-doctest = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "operate-do";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "2016 uecmma";
      maintainer = "developer@mma.club.uec.ac.jp";
      author = "uecmma";
      homepage = "https://github.com/uecmma/haskell-library-collections/tree/master/operate-do";
      url = "";
      synopsis = "Simple project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "operate-do" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.charset)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "spec-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.operate-do)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
          ];
        };
        "doc-test" = {
          depends  = pkgs.lib.optionals (!(!_flags.test-doctest)) [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.filemanip)
          ];
        };
      };
    };
  }