{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "yesod-vend";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gtener@gmail.com";
      author = "Krzysztof Skrzętnicki";
      homepage = "";
      url = "";
      synopsis = "Simple CRUD classes for easy view creation for Yesod";
      description = "Simple CRUD classes for easy view creation for Yesod. See @Yesod.VEND@ for more informations and description how to use it.";
      buildType = "Simple";
    };
    components = {
      "yesod-vend" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yesod-platform)
          (hsPkgs.persistent)
          (hsPkgs.text)
          (hsPkgs.blaze-html)
          (hsPkgs.hamlet)
          (hsPkgs.yesod)
        ];
      };
    };
  }