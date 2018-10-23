{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "servant-elm";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015-2016 Matt Bray";
      maintainer = "mattjbray@gmail.com";
      author = "Matt Bray";
      homepage = "http://github.com/mattjbray/servant-elm#readme";
      url = "";
      synopsis = "Automatically derive Elm functions to query servant webservices.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "servant-elm" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.elm-export)
          (hsPkgs.formatting)
          (hsPkgs.lens)
          (hsPkgs.servant)
          (hsPkgs.servant-foreign)
          (hsPkgs.text)
        ];
      };
      exes = {
        "books-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.elm-export)
            (hsPkgs.servant)
            (hsPkgs.servant-elm)
          ];
        };
        "e2e-tests-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.elm-export)
            (hsPkgs.servant)
            (hsPkgs.servant-elm)
          ];
        };
        "giphy-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.elm-export)
            (hsPkgs.servant)
            (hsPkgs.servant-elm)
            (hsPkgs.text)
          ];
        };
        "readme-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.elm-export)
            (hsPkgs.servant)
            (hsPkgs.servant-elm)
          ];
        };
      };
      tests = {
        "servant-elm-test" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.elm-export)
            (hsPkgs.formatting)
            (hsPkgs.hspec)
            (hsPkgs.interpolate)
            (hsPkgs.mockery)
            (hsPkgs.process)
            (hsPkgs.servant)
            (hsPkgs.servant-elm)
            (hsPkgs.text)
          ];
        };
      };
    };
  }