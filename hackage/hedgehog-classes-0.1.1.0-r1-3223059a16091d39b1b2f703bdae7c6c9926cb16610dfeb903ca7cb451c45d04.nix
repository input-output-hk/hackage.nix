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
    flags = { aeson = true; };
    package = {
      specVersion = "2.0";
      identifier = { name = "hedgehog-classes"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 chessai";
      maintainer = "chessai1996@gmail.com";
      author = "chessai";
      homepage = "https://github.com/chessai/hedgehog-classes";
      url = "";
      synopsis = "Hedgehog will eat your typeclass bugs";
      description = "This library provides Hedgehog properties to ensure\nthat typeclass instances adhere to the set of laws\nthat they are supposed to. There are other libraries\nthat do similar things, such as `genvalidity-hspec` and `checkers`.\nThis library differs from other solutions by not introducing any\nnew typeclasses that the user needs to learn, and otherwise minimal\nAPI overhead.\n\nThis library is directly inspired by `quickcheck-classes`.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."wl-pprint-annotated" or (errorHandler.buildDepError "wl-pprint-annotated"))
          ] ++ (pkgs.lib).optional (flags.aeson) (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"));
        buildable = if compiler.isGhc && (compiler.version).lt "8.5"
          then false
          else true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hedgehog-classes" or (errorHandler.buildDepError "hedgehog-classes"))
            ];
          buildable = true;
          };
        };
      };
    }