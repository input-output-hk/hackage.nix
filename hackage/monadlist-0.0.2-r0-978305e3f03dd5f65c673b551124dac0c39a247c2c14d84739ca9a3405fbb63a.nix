{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "monadlist";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "thomasedingcode@gmail.com";
      author = "Thomas Eding";
      homepage = "";
      url = "";
      synopsis = "Monadic versions of list functions";
      description = "Monadic versions of list functions seen in Data.List.";
      buildType = "Simple";
    };
    components = {
      "monadlist" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }