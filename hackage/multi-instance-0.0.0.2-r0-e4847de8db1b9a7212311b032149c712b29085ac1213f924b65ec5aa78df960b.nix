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
      specVersion = "1.10";
      identifier = {
        name = "multi-instance";
        version = "0.0.0.2";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin <ch.martin@gmail.com>";
      author = "Chris Martin <ch.martin@gmail.com>";
      homepage = "https://github.com/chris-martin/multi-instance#readme";
      url = "";
      synopsis = "Typeclasses augmented with a phantom type parameter";
      description = "Provides alternative versions of common typeclasses, augmented with a phantom\nthat allows multiple instances to be specified in the case where a type has\nmore than one candidate instance for the original class.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.multi-instance)
          ];
        };
      };
    };
  }