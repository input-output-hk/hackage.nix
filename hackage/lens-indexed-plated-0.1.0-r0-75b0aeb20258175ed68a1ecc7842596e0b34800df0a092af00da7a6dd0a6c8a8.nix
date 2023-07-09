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
      specVersion = "2.4";
      identifier = { name = "lens-indexed-plated"; version = "0.1.0"; };
      license = "BSD-2-Clause";
      copyright = "Copyright (C) 2023 Antoine Leblanc";
      maintainer = "nicuveo@gmail.com";
      author = "Antoine Leblanc";
      homepage = "https://github.com/nicuveo/lens-indexed-plated";
      url = "";
      synopsis = "Indexed version of Plated.";
      description = "This package contains an alternative version of lens' @Plated@ that\nallows for a user-specified index: where @plate@ returns a\n@Traversal@, @iplate@ takes an additional starting index and returns\na @IndexedTraversal@. It also provides an indexed equivalent to most\nof the @Plated@ functions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
        buildable = true;
        };
      };
    }