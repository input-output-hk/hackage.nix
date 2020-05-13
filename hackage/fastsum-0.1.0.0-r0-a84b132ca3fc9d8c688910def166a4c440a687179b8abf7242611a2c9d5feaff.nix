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
    flags = { build-examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "fastsum"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Rob Rix, Josh Vera, Allele Dev, Patrick Thomson 2016-2018";
      maintainer = "patrickt@github.com";
      author = "Rob Rix, Josh Vera, Allele Dev, Patrick Thomson";
      homepage = "https://github.com/patrickt/fastsum#readme";
      url = "";
      synopsis = "A fast open-union type suitable for 100+ contained alternatives";
      description = "This package provides Data.Sum, an open-union type, similar to the Union type\nthat powers the implementation of Oleg Kiselyov's extensible-effects library.\n\nUnlike most open-union implementations, this type is very fast to compile,\neven when the type-level list of alternatives contains hundreds of entries.\nMembership queries are constant-time, compiling to a single type-level natural\nlookup in a closed type family, unlike the traditional encoding of Union,\nwhich relies on recursive typeclass lookups. As such, this type lends itself\nto representing abstract syntax trees or other rich data structures.\n\nThis project is safe to use in production. Any performance problems at\ncompile-time or runtime should be filed as bugs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fastsum" or (errorHandler.buildDepError "fastsum"))
            ];
          buildable = if !flags.build-examples then false else true;
          };
        };
      };
    }