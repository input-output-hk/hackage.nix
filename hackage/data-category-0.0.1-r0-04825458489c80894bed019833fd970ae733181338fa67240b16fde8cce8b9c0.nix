{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "data-category";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sjoerd@w3future.com";
      author = "Sjoerd Visscher";
      homepage = "";
      url = "";
      synopsis = "Restricted categories";
      description = "Data-category is a collection of categories, and some categorical constructions on them.";
      buildType = "Simple";
    };
    components = {
      "data-category" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }