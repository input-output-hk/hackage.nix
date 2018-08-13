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
        name = "lucid-colonnade";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/colonnade#readme";
      url = "";
      synopsis = "Helper functions for using lucid with colonnade";
      description = "Lucid and colonnade";
      buildType = "Simple";
    };
    components = {
      "lucid-colonnade" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.colonnade)
          (hsPkgs.lucid)
          (hsPkgs.text)
        ];
      };
    };
  }