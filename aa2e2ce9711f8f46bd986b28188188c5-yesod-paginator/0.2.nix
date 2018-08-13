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
      specVersion = "1.6";
      identifier = {
        name = "yesod-paginator";
        version = "0.2";
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
          (hsPkgs.text)
          (hsPkgs.yesod)
          (hsPkgs.persistent)
          (hsPkgs.transformers)
        ];
      };
    };
  }