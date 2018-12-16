{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "yesod-paginator";
        version = "0.11.0";
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.yesod)
          (hsPkgs.persistent)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "yesod-paginator-example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.yesod)
            (hsPkgs.yesod-paginator)
            (hsPkgs.warp)
          ];
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.yesod-paginator)
            (hsPkgs.data-default)
            (hsPkgs.wai-extra)
            (hsPkgs.yesod-core)
            (hsPkgs.yesod-test)
          ];
        };
      };
    };
  }