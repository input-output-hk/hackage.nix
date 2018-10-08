{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      examples = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "yesod-paginator";
        version = "1.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "pbrisbin@gmail.com";
      author = "Patrick Brisbin";
      homepage = "http://github.com/pbrisbin/yesod-paginator";
      url = "";
      synopsis = "A pagination approach for yesod";
      description = "Paginate a list showing a per-item widget and links to other pages";
      buildType = "Simple";
    };
    components = {
      "yesod-paginator" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-markup)
          (hsPkgs.path-pieces)
          (hsPkgs.persistent)
          (hsPkgs.safe)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.uri-encode)
          (hsPkgs.yesod-core)
        ];
      };
      exes = {
        "yesod-paginator-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.warp)
            (hsPkgs.yesod)
            (hsPkgs.yesod-paginator)
          ];
        };
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.yesod-core)
            (hsPkgs.yesod-paginator)
            (hsPkgs.yesod-test)
          ];
        };
      };
    };
  }