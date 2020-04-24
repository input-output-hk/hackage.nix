{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "unittyped"; version = "0.1"; };
      license = "LGPL-2.1-only";
      copyright = "Copyright: (c) 2012 Thijs Alkemade";
      maintainer = "Thijs Alkemade <thijsalkemade@gmail.com>";
      author = "Thijs Alkemade <thijsalkemade@gmail.com>";
      homepage = "https://bitbucket.org/xnyhps/haskell-unittyped/";
      url = "";
      synopsis = "An extendable library for type-safe computations including units.";
      description = "UnitTyped is a Haskell library that makes it possible to do computations on values with a dimension and a unit. The typechecker ensures that all operations are using the proper dimensions, and all units can be converted to compatible units automatically. New dimensions and units can be defined from other modules, requiring just a data type and one class instance to work with everything else. The library comes with all SI dimensions and units, and many units derived from those.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "test-si" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."unittyped" or ((hsPkgs.pkgs-errors).buildDepError "unittyped"))
            ];
          buildable = true;
          };
        };
      };
    }