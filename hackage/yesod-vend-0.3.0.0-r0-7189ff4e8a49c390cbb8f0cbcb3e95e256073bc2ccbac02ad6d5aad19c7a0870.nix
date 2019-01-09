{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "yesod-vend"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gtener@gmail.com";
      author = "Krzysztof Skrzętnicki";
      homepage = "https://github.com/Tener/yesod-vend";
      url = "";
      synopsis = "Simple CRUD classes for easy view creation for Yesod";
      description = "Simple CRUD classes for easy view creation for Yesod. See @Yesod.VEND@ for more informations and description how to use it.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.yesod)
          (hsPkgs.yesod-form)
          (hsPkgs.persistent)
          (hsPkgs.text)
          (hsPkgs.blaze-html)
          (hsPkgs.hamlet)
          (hsPkgs.yesod)
          ];
        };
      exes = {
        "vend-test-user" = {
          depends = [
            (hsPkgs.yesod-vend)
            (hsPkgs.base)
            (hsPkgs.yesod)
            (hsPkgs.yesod-form)
            (hsPkgs.persistent)
            (hsPkgs.persistent-sqlite)
            (hsPkgs.text)
            (hsPkgs.blaze-html)
            (hsPkgs.hamlet)
            (hsPkgs.monad-logger)
            (hsPkgs.resourcet)
            ];
          };
        };
      };
    }