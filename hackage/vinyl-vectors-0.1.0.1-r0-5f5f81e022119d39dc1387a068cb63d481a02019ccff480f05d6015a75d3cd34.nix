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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "vinyl-vectors"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2010 Author Here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "http://github.com/andrewthad/vinyl-vectors";
      url = "";
      synopsis = "Initial project template from stack";
      description = "This library provides vectors of vinyl records stored\nas a structure of arrays. This vectors types provided\nimplement the generic vector interface and can be\nused with any library that accepts a generic vector\ntype.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "sorting" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."vinyl-vectors" or (errorHandler.buildDepError "vinyl-vectors"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            ];
          buildable = if !flags.examples then false else true;
          };
        };
      };
    }