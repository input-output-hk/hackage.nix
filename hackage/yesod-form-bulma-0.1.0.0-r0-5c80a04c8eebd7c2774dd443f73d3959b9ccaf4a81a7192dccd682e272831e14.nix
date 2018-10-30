{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "yesod-form-bulma";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018 Shinya Yamaguchi";
      maintainer = "ingroze@gmail.com";
      author = "Shinya Yamaguchi";
      homepage = "https://github.com/waddlaw/yesod-form-bulma#readme";
      url = "";
      synopsis = "support Bulma form for Yesod";
      description = "Please see the README on Github at <https://github.com/waddlaw/yesod-form-bulma#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.email-validate)
          (hsPkgs.shakespeare)
          (hsPkgs.text)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-form)
        ];
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.email-validate)
            (hsPkgs.shakespeare)
            (hsPkgs.text)
            (hsPkgs.yesod)
            (hsPkgs.yesod-core)
            (hsPkgs.yesod-form)
            (hsPkgs.yesod-form-bulma)
          ];
        };
        "showcase" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.email-validate)
            (hsPkgs.shakespeare)
            (hsPkgs.text)
            (hsPkgs.yesod)
            (hsPkgs.yesod-core)
            (hsPkgs.yesod-form)
            (hsPkgs.yesod-form-bulma)
          ];
        };
      };
      tests = {
        "yesod-form-bulma-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.email-validate)
            (hsPkgs.shakespeare)
            (hsPkgs.text)
            (hsPkgs.yesod-core)
            (hsPkgs.yesod-form)
            (hsPkgs.yesod-form-bulma)
          ];
        };
      };
    };
  }