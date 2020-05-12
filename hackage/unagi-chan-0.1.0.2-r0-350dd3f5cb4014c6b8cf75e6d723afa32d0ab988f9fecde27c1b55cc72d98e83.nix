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
    flags = { compare-benchmarks = false; dev = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "unagi-chan"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brandon.m.simmons@gmail.com";
      author = "Brandon Simmons";
      homepage = "";
      url = "";
      synopsis = "Fast and scalable concurrent queues for x86, with a Chan-like API";
      description = "This library provides implementations of concurrent FIFO queues (for both\ngeneral boxed and primitive unboxed values) that are fast, perform well\nunder contention, and offer a Chan-like interface. The library may be of\nlimited usefulness outside of x86 architectures where the fetch-and-add\ninstruction is not available.\n\nHere is an example benchmark measuring the time taken to write and then\nread 100,000 messages, with work divided amongst increasing number of\nreaders and writers (time in ms), comparing against the top-performing\nqueues in the standard libraries.\n\n<<http://i.imgur.com/safKkCP.png>>\n\nAnd here is a view on just the unagi implementations.\n\n<<http://i.imgur.com/K6s2pXj.png>>\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."atomic-primops" or (errorHandler.buildDepError "atomic-primops"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ];
        buildable = true;
        };
      exes = {
        "dev-example" = {
          depends = (pkgs.lib).optionals (!(!flags.dev)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."unagi-chan" or (errorHandler.buildDepError "unagi-chan"))
            ];
          buildable = if !flags.dev then false else true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."atomic-primops" or (errorHandler.buildDepError "atomic-primops"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "single" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unagi-chan" or (errorHandler.buildDepError "unagi-chan"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ] ++ (pkgs.lib).optional (flags.compare-benchmarks) (hsPkgs."stm" or (errorHandler.buildDepError "stm"));
          buildable = true;
          };
        "multi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unagi-chan" or (errorHandler.buildDepError "unagi-chan"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            ] ++ (pkgs.lib).optional (flags.compare-benchmarks) (hsPkgs."stm" or (errorHandler.buildDepError "stm"));
          buildable = true;
          };
        };
      };
    }