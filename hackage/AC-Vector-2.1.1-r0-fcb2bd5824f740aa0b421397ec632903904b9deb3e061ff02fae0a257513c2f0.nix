{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "AC-Vector"; version = "2.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "MathematicalOrchid@hotmail.com";
      author = "Andrew Coppin";
      homepage = "";
      url = "";
      synopsis = "Efficient geometric vectors and transformations.";
      description = "This Haskell library implements several small vectors types\nwith @Double@ fields, with seperate types for each size of\nvector, and a type class for handling vectors generally.\n(Note that although this package is listed in the \\\"graphics\\\"\ncategory, the package itself has no graphics facilities. It\njust contains data structures that are useful for graphics\nwork.)\nNow includes @points_bounds@ functions, for finding the bounds\nof a list of points.";
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