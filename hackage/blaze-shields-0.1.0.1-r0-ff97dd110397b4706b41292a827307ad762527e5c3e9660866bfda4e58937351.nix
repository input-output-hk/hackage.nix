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
      specVersion = "1.12";
      identifier = {
        name = "blaze-shields";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "qinka@live.com";
      author = "Qinka";
      homepage = "http://githubcom/Qinka/blaze-shields";
      url = "";
      synopsis = "create svg by Haskell";
      description = "a Haskell version of shields ,which is on github.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-markup)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-svg)
        ];
      };
    };
  }