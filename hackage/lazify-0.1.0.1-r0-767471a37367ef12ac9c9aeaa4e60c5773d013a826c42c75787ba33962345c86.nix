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
      specVersion = "2.0";
      identifier = { name = "lazify"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 David Feuer";
      maintainer = "David.Feuer@gmail.com";
      author = "David Feuer";
      homepage = "https://github.com/treeowl/lazify";
      url = "";
      synopsis = "A simple utility for lazy record matching";
      description = "\nSince early Haskell history, it's been convenient to make values\nstricter using `seq`. Making them lazier has always been a bit\nof a chore. This package offers tools for doing so.\n\nFor an idiomatic classy approach with generic defaults, use\n\"Data.Lazify\". To just go with whatever the generics say\n(aside from overlapping instances), use \"Data.Lazify.Generic\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "9.0.1") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
        buildable = true;
        };
      tests = {
        "lazify-properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lazify" or (errorHandler.buildDepError "lazify"))
            ];
          buildable = true;
          };
        "lazifyg-properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lazify" or (errorHandler.buildDepError "lazify"))
            ];
          buildable = true;
          };
        };
      };
    }