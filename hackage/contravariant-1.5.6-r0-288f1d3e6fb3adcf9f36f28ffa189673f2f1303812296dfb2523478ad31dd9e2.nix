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
    flags = { statevar = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "contravariant"; version = "1.5.6"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2007-2015 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/contravariant/";
      url = "";
      synopsis = "Contravariant functors";
      description = "Contravariant functors.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ] ++ pkgs.lib.optional (flags.statevar) (hsPkgs."StateVar" or (errorHandler.buildDepError "StateVar"));
        buildable = true;
      };
    };
  }