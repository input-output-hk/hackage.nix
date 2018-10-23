{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "ihaskell-hvega";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Douglas Burke";
      maintainer = "dburke.gw@gmail.com";
      author = "Douglas Burke";
      homepage = "https://github.com/DougBurke/hvega";
      url = "";
      synopsis = "IHaskell display instance for hvega types.";
      description = "Support Vega-Lite visualizations in IHaskell notebooks.";
      buildType = "Simple";
    };
    components = {
      "ihaskell-hvega" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.hvega)
          (hsPkgs.ihaskell)
          (hsPkgs.text)
        ];
      };
    };
  }