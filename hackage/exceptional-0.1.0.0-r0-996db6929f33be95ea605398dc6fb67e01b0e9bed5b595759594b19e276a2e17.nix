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
      identifier = { name = "exceptional"; version = "0.1.0.0"; };
      license = "BSD-2-Clause";
      copyright = "Copyright (c) 2015, Peter Harpending.";
      maintainer = "peter@harpending.org";
      author = "Peter Harpending";
      homepage = "https://github.com/pharpend/exceptional";
      url = "";
      synopsis = "A type for pure code that can fail.";
      description = "This is a very simple type:\n\n> data Exceptional x\n>   = Failure String\n>   | Success x\n\nIt's much like @Maybe@, except instead of @Nothing@, we have @Failure\nString@.\n\nA comparison could also be made to @Either String@. I made this library\nbecause I was dissatisfied with the @Monad@ instance for @Either@. In this\ntype, @fail = Failure@. It's rather simple.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }