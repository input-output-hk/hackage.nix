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
      identifier = { name = "optstream"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2022 Dan Shved";
      maintainer = "danshved@gmail.com";
      author = "Dan Shved <danshved@gmail.com>";
      homepage = "https://github.com/danshved/optstream";
      url = "";
      synopsis = "Command line option parsing library with a twice applicative interface";
      description = "Provides tools to create command line parsers. The library has a simple\ninterface to create atomic parsers and combine them into more complex\nstructures. The interface has a low-level feel but still lets you solve\ncommon use-cases with minimal work.\n\nHas support for:\n\n* Generating a help screen.\n* Multi-argument options.\n* Short flags with bundling.\n* Subcommands via '<|>'.\n* Parsing \"in sequence\" via '<*>' and \"in parallel\" via '<#>'.\n* Options with custom types via '<$?>'.\n* Monadic bind if you need it.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "optstream-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optstream" or (errorHandler.buildDepError "optstream"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          ];
          buildable = true;
        };
      };
    };
  }