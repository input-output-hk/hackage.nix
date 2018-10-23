{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "witness";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ashley Yakeley <ashley@semantic.org>";
      author = "Ashley Yakeley <ashley@semantic.org>";
      homepage = "";
      url = "";
      synopsis = "values that witness types";
      description = "A witness is a value that /witnesses/ some sort of constraint on some list of type variables.\nThis library provides support for simple witnesses, that constrain a type variable to a single type, and equality witnesses, that constrain two type variables to be the same type. It also provides classes for representatives, which are values that represent types.\nSee the paper /Witnesses and Open Witnesses/ (<http://semantic.org/stuff/Open-Witnesses.pdf>).";
      buildType = "Simple";
    };
    components = {
      "witness" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
    };
  }