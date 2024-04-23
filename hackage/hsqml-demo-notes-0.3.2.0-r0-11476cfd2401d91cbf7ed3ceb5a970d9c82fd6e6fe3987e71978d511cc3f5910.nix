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
      identifier = { name = "hsqml-demo-notes"; version = "0.3.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Robin KAY";
      maintainer = "komadori@gekkou.co.uk";
      author = "Robin KAY";
      homepage = "http://www.gekkou.co.uk/software/hsqml/";
      url = "";
      synopsis = "Sticky notes example program implemented in HsQML";
      description = "Sticky notes example program implemented in HsQML";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hsqml-notes" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
            (hsPkgs."hsqml" or (errorHandler.buildDepError "hsqml"))
          ];
          buildable = true;
        };
      };
    };
  }