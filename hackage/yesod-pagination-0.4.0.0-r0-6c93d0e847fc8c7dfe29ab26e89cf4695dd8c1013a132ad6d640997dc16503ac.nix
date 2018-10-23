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
        name = "yesod-pagination";
        version = "0.4.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "me@joelt.io";
      author = "Joel Taylor";
      homepage = "https://github.com/joelteon/yesod-pagination";
      url = "";
      synopsis = "Pagination in Yesod";
      description = "Easy pagination for Yesod.";
      buildType = "Simple";
    };
    components = {
      "yesod-pagination" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-default)
          (hsPkgs.esqueleto)
          (hsPkgs.shakespeare)
          (hsPkgs.shakespeare-text)
          (hsPkgs.text)
          (hsPkgs.yesod)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.monad-logger)
            (hsPkgs.persistent)
            (hsPkgs.persistent-sqlite)
            (hsPkgs.resource-pool)
            (hsPkgs.resourcet)
            (hsPkgs.shakespeare-text)
            (hsPkgs.text)
            (hsPkgs.utf8-string)
            (hsPkgs.wai-test)
            (hsPkgs.yesod)
            (hsPkgs.yesod-pagination)
            (hsPkgs.yesod-test)
          ];
        };
      };
    };
  }