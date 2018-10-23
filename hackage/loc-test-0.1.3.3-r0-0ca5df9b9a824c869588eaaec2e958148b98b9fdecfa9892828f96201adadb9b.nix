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
        name = "loc-test";
        version = "0.1.3.3";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin <ch.martin@gmail.com>";
      author = "Chris Martin <ch.martin@gmail.com>";
      homepage = "https://github.com/chris-martin/loc";
      url = "";
      synopsis = "Test-related utilities related to the /loc/ package.";
      description = "Test-related utilities related to the /loc/ package. Currently contains only\nHedgehog generators.";
      buildType = "Simple";
    };
    components = {
      "loc-test" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.hedgehog)
          (hsPkgs.loc)
        ];
      };
    };
  }