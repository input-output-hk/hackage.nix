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
        name = "ihaskell-hvega";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Douglas Burke";
      maintainer = "dburke.gw@gmail.com";
      author = "Douglas Burke";
      homepage = "https://github.com/githubuser/ihaskell-hvega#readme";
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