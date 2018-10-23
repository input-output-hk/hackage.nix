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
        name = "data-category";
        version = "0.6.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sjoerd@w3future.com";
      author = "Sjoerd Visscher";
      homepage = "http://github.com/sjoerdvisscher/data-category";
      url = "";
      synopsis = "Category theory";
      description = "Data-category is a collection of categories, and some categorical constructions on them.\n\nYou can restrict the types of the objects of your category by using a GADT for the arrow type.\nTo be able to proof to the compiler that a type is an object in some category, objects also need to be represented at the value level.\nThe corresponding identity arrow of the object is used for that.\n\nSee the 'Boolean' and 'Product' categories for some examples.\n\nNote: Strictly speaking this package defines Hask-enriched categories, not ordinary categories (which are Set-enriched.)\nIn practice this means we are allowed to ignore 'undefined' (f.e. when talking about uniqueness of morphisms),\nand we can treat the categories as normal categories.";
      buildType = "Simple";
    };
    components = {
      "data-category" = {};
    };
  }