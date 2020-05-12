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
      specVersion = "1.6";
      identifier = { name = "bound"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/bound/";
      url = "";
      synopsis = "Combinators for manipulating locally-nameless generalized de Bruijn terms";
      description = "Combinators for manipulating locally-nameless generalized de Bruijn terms";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."prelude-extras" or (errorHandler.buildDepError "prelude-extras"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }