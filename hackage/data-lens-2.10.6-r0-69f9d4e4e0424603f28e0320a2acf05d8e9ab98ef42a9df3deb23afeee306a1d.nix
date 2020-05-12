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
    flags = { derivedatatypeable = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "data-lens"; version = "2.10.6"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2014 Edward A. Kmett, Russell O'Connor & Tony Morris";
      maintainer = "Russell O'Connor <roconnor@theorem.ca>";
      author = "Russell O'Connor, Edward A. Kmett & Tony Morris";
      homepage = "http://github.com/roconnor/data-lens/";
      url = "";
      synopsis = "Used to be Haskell 98 Lenses";
      description = "Used to be Haskell 98 Lenses";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }