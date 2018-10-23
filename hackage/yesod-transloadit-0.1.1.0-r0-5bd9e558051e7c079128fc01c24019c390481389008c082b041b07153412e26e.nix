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
        name = "yesod-transloadit";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "robertjflong@gmail.com";
      author = "Bob Long";
      homepage = "";
      url = "";
      synopsis = "Transloadit support for Yesod";
      description = "Drop in Transloadit capabilites for Yesod web apps";
      buildType = "Simple";
    };
    components = {
      "yesod-transloadit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.cryptohash)
          (hsPkgs.bytestring)
          (hsPkgs.byteable)
          (hsPkgs.yesod)
          (hsPkgs.yesod-form)
          (hsPkgs.yesod-core)
          (hsPkgs.transformers)
          (hsPkgs.lens)
          (hsPkgs.shakespeare)
          (hsPkgs.lens-aeson)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.yesod-transloadit)
            (hsPkgs.yesod-test)
            (hsPkgs.hspec)
            (hsPkgs.yesod)
            (hsPkgs.yesod-form)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.text)
          ];
        };
      };
    };
  }