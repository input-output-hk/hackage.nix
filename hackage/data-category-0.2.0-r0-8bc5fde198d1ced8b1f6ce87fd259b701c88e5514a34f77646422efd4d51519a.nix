{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "data-category"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sjoerd@w3future.com";
      author = "Sjoerd Visscher";
      homepage = "http://github.com/sjoerdvisscher/data-category";
      url = "";
      synopsis = "Restricted categories";
      description = "Data-category is a collection of categories, and some categorical constructions on them.\n\nYou can restrict the types of the objects of your category by using a GADT for the arrow type.\nTo be able to proof to the compiler that a type is an object in some category, objects also need to be represented at the value level.\nTherefore the 'Category' class has an associated data type 'Obj'. This which will often also be a GADT.\n\nSee the 'Monoid', 'Boolean' and 'Product' categories for some examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }