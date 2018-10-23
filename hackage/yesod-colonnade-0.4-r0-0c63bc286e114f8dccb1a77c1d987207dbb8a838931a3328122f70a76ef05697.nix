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
        name = "yesod-colonnade";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/colonnade#readme";
      url = "";
      synopsis = "Helper functions for using yesod with colonnade";
      description = "Yesod and colonnade";
      buildType = "Simple";
    };
    components = {
      "yesod-colonnade" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.colonnade)
          (hsPkgs.yesod-core)
          (hsPkgs.text)
          (hsPkgs.blaze-markup)
          (hsPkgs.blaze-html)
        ];
      };
    };
  }