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
        name = "blaze-colonnade";
        version = "1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/colonnade#readme";
      url = "";
      synopsis = "Helper functions for using blaze-html with colonnade";
      description = "Blaze HTML and colonnade";
      buildType = "Simple";
    };
    components = {
      "blaze-colonnade" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.colonnade)
          (hsPkgs.blaze-markup)
          (hsPkgs.blaze-html)
          (hsPkgs.text)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.colonnade)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }