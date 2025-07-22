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
      specVersion = "3.4";
      identifier = { name = "coerce-with-substitution"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2025 Ryan Hendrickson";
      maintainer = "contact-project+rhendric-haskell-coerce-with-substitution-71023049-issue-@incoming.gitlab.com";
      author = "Ryan Hendrickson";
      homepage = "https://gitlab.com/rhendric/haskell-coerce-with-substitution";
      url = "";
      synopsis = "Coercions with improved type inference";
      description = "This package defines aliases of 'Data.Coerce.coerce' and\n'Unsafe.Coerce.unsafeCoerce' that accept a type argument containing type\nsubstitutions, creating a relationship between the argument and result\ntypes of the coercion that GHC can use when inferring one type from the\nother.\n\nSee \"Data.CoerceSubst\" for a full introduction to this package.\n\nRequires GHC 9.6 or later, due to use of the\n[`TypeData`](https://downloads.haskell.org/ghc/latest/docs/users_guide/exts/type_data.html)\nextension.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }