{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "AC-Vector"; version = "2.4.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jan@rochel.info";
      author = "Andrew Coppin";
      homepage = "";
      url = "";
      synopsis = "Efficient geometric vectors and transformations.";
      description = "This Haskell library implements several small vectors types with @Double@\nfields, with seperate types for each size of vector, and a type class for\nhandling vectors generally. (Note that although this package is listed in the\n\\\"graphics\\\" category, the package itself has no graphics facilities. It just\ncontains data structures that are useful for graphics work.)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }