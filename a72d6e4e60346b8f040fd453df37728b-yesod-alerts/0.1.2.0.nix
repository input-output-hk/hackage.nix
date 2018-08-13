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
        name = "yesod-alerts";
        version = "0.1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Daniel Campoverde";
      maintainer = "alx@sillybytes.net";
      author = "Daniel Campoverde";
      homepage = "https://github.com/alx741/yesod-alerts#readme";
      url = "";
      synopsis = "Alert messages for the Yesod framework";
      description = "Use the \"alerts\" package with the Yesod framework";
      buildType = "Simple";
    };
    components = {
      "yesod-alerts" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.alerts)
          (hsPkgs.text)
          (hsPkgs.safe)
          (hsPkgs.yesod-core)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
        ];
      };
    };
  }