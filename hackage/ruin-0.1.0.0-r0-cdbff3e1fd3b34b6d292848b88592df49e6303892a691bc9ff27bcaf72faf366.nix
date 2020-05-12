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
    flags = { werror = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ruin"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Nicolas Frisby";
      maintainer = "nicolas.frisby@gmail.com";
      author = "Nicolas Frisby";
      homepage = "";
      url = "";
      synopsis = "Pliable records";
      description = "@ruin@ is a DSL for working with record types. It focuses on\nconverting between conventionally-declared record types and\nsupporting named function arguments.\n\n* Uses @-XOverloadedLabels@, so that @#x@ is a first-class label for\nthe field named @x@.\n* Provides @GHC.Generics@ defaults.\n* Named arguments: @\\\\[rna|x y z] -> (x,y,z)@ inhabits @(\"x\" :\\@ a,\"y\"\n:\\@ b,\"z\" :\\@ c) -> (a,b,c)@.\n* Relies on @-XDuplicateRecordFields@; the generic defaults only\nwork if record selector names do not have distinguishing prefices.\n* Custom type errors, such as @ruin: Could not find the field \\`x\\'\nin the type ...@\n* \"Data.Ruin.R\" provides anonymous record types where the order of\nfields is irrelevant.\n\nSee the \"Data.Ruin\" module for an overview.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ruin" or (errorHandler.buildDepError "ruin"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."should-not-typecheck" or (errorHandler.buildDepError "should-not-typecheck"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }