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
    flags = { dev = false; release = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "mutable-lens"; version = "0.4.1.0"; };
      license = "Apache-2.0";
      copyright = "2020 Ximin Luo";
      maintainer = "infinity0@pwned.gg";
      author = "Ximin Luo";
      homepage = "https://github.com/infinity0/hs-mutable-lens";
      url = "";
      synopsis = "Interoperate mutable references with regular lens";
      description = "Use mutable references as lens, compose them with other lens, and run them.\n\nYou may have heard of lens being described as \"functional\" or \"first-class\"\nreferences, with some nice properties such as composition. However the\nequivalence is more than just abstract - mutable references can be readily\nconverted into lens form, interoperable with other pure lens. This makes use\nof the fact that \"mutability\" in a high-level language focusing on purity, is\nreally just an alias for a pure state monad that is treated specially by the\nruntime system. A mutable reference over a value of type @a@ with world state\nof type @s@, *is* therefore an actual @Lens s s a a@. There is no need for\nhandwaving or connotative language, the isomorphism is direct and concrete.\n\nThis package demonstrates this isomorphism, converting between the two forms.\nYou then have access to the whole of the lens ecosystem and its compositional\nproperties, and use them with mutable references without other special-cased\nshims or mutable-specific abstractions.\n\nUniformity of API is another major benefit - if you want to switch to a\ndifferent reference type, you only have to change your type definitions and\nimports, you don't have to change all @readSomeVar@ to @readOtherVar@,\n@writeSomeVar@ to @writeOtherVar@, or was it @putOtherVar@, and does the\n@atomicModifyVar@ function take a @s -> (a, s)@ or a @s -> (s, a)@ again?\n\nA word of warning: this package has not been optimised for performance, and\ncurrently only supports GHC. We would certainly welcome contributions in\nthese areas, if you are interested in running this code in production. On the\nother hand for what it's worth, our initial benchmarks suggest that the\nperformance degradation is not signficant - ~13% with -O2 in a program that\nreads and writes to references and does no other useful work. In a real\nprogram that does other useful work, this number will be smaller.\n\nSee unit tests for example usage, e.g.\n<https://github.com/infinity0/hs-mutable-lens/tree/master/test/Control/Lens/MutableTest.hs MutableTest>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ];
        buildable = true;
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          ];
          buildable = true;
        };
        "unit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mutable-lens" or (errorHandler.buildDepError "mutable-lens"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "basic-benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mutable-lens" or (errorHandler.buildDepError "mutable-lens"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ];
          buildable = true;
        };
      };
    };
  }