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
      specVersion = "1.18";
      identifier = {
        name = "hvega";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Douglas Burke";
      maintainer = "dburke.gw@gmail.com";
      author = "Douglas Burke";
      homepage = "https://github.com/DougBurke/hvega";
      url = "";
      synopsis = "Create Vega and Vega-Lite visualizations.";
      description = "This is an almost-direct port of elm-vega\n(<http://package.elm-lang.org/packages/gicentre/elm-vega/2.2.1>)\nto Haskell.";
      buildType = "Simple";
    };
    components = {
      "hvega" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
      };
    };
  }