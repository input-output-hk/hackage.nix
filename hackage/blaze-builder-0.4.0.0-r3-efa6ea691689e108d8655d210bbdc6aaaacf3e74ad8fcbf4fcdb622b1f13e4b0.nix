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
      specVersion = "1.8";
      identifier = { name = "blaze-builder"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2014 Simon Meier\n(c) 2010 Jasper Van der Jeugt\n(c) 2013-2015 Leon P Smith";
      maintainer = "Leon Smith <leon@melding-monads.com>";
      author = "Jasper Van der Jeugt, Simon Meier, Leon P Smith";
      homepage = "http://github.com/lpsmith/blaze-builder";
      url = "";
      synopsis = "Efficient buffered output.";
      description = "This library provides an implementation of the older\nblaze-builder interface in terms of the new builder that\nshipped with bytestring-0.10.4.0\n\nThis implementation is mostly intended as a bridge to the\nnew builder,  so that code that uses the old interface\ncan interoperate with code that uses the new\nimplementation.   Note that no attempt has been made\nto preserve the old internal modules,  so code that\nhas these dependencies cannot use this interface.\n\nNew code should,  for the most part,  use the new\ninterface.   However, this module does implement\na chunked HTTP encoding,  which is not otherwise\nimplemented (yet?) with the new builder.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.8") (hsPkgs."bytestring-builder" or (errorHandler.buildDepError "bytestring-builder"));
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
          buildable = true;
        };
      };
    };
  }