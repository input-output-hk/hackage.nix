{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "AC-Vector"; version = "2.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "MathematicalOrchid@hotmail.com";
      author = "Andrew Coppin";
      homepage = "";
      url = "";
      synopsis = "Efficient geometric vectors and transformations.";
      description = "This Haskell library implements several small vectors types\nwith @Double@ fields, with seperate types for each size of\nvector, and a type class for handling vectors generally.\n(Note that although this package is listed in the \\\"graphics\\\"\ncategory, the package itself has no graphics facilities. It\njust contains data structures that are useful for graphics\nwork.)\n\nChanges:\n\n* Fixed a stupid bug in @union@. Until now, the function could\nsometimes return gibberish answers. Hopefully this is now fixed.";
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