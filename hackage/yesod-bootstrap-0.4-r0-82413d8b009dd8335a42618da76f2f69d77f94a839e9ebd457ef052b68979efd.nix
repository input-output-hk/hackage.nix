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
        name = "yesod-bootstrap";
        version = "0.4";
      };
      license = "MIT";
      copyright = "Andrew Martin 2016";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/haskell-bootstrap";
      url = "";
      synopsis = "Bootstrap widgets for yesod";
      description = "Lots of bootstrap widgets for yesod";
      buildType = "Simple";
    };
    components = {
      "yesod-bootstrap" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-elements)
          (hsPkgs.bootstrap-types)
          (hsPkgs.transformers)
          (hsPkgs.shakespeare)
          (hsPkgs.text)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
        ];
      };
    };
  }