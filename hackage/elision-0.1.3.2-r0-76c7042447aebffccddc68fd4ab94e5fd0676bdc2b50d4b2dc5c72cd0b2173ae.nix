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
      identifier = { name = "elision"; version = "0.1.3.2"; };
      license = "BSD-2-Clause";
      copyright = "2016 Alex Crough";
      maintainer = "alex@crough.io";
      author = "Alex Crough";
      homepage = "http://github.com/crough/elision#readme";
      url = "";
      synopsis = "Arrows with holes.";
      description = "A framework for describing holes in transformations\nand impure computations purely.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
        ];
        buildable = true;
      };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."elision" or (errorHandler.buildDepError "elision"))
          ];
          buildable = true;
        };
      };
    };
  }