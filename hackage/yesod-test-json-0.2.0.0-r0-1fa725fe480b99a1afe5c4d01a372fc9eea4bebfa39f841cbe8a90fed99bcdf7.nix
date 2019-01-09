{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "yesod-test-json"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "amsay@amsay.net";
      author = "Sam Anklesaria";
      homepage = "https://github.com/bogiebro/yesod-test-json";
      url = "";
      synopsis = "Utility functions for testing JSON web services written in Yesod";
      description = "yesod-test-json provides combinators for using the hspec and wai-test libraries together.\nIt is meant to be used like yesod-test, but for web services as opposed to web applications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.HUnit)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.http-types)
          (hsPkgs.hspec)
          (hsPkgs.wai)
          (hsPkgs.wai-test)
          (hsPkgs.transformers)
          (hsPkgs.yesod-default)
          (hsPkgs.conduit)
          ];
        };
      };
    }