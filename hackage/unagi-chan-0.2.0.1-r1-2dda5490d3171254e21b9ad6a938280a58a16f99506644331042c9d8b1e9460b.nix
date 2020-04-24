{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { compare-benchmarks = false; dev = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "unagi-chan"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brandon.m.simmons@gmail.com";
      author = "Brandon Simmons";
      homepage = "";
      url = "";
      synopsis = "Fast and scalable concurrent queues for x86, with a Chan-like API";
      description = "This library provides implementations of concurrent FIFO queues (for both\ngeneral boxed and primitive unboxed values) that are fast, perform well\nunder contention, and offer a Chan-like interface. The library may be of\nlimited usefulness outside of x86 architectures where the fetch-and-add\ninstruction is not available.\n\nHere is an example benchmark measuring the time taken to concurrently write\nand read 100,000 messages, with work divided amongst increasing number of\nreaders and writers, comparing against the top-performing queues in the\nstandard libraries, with an inset graph showing a zoomed-in view on the\nimplementations here.\n\n<<http://i.imgur.com/J5rLUFn.png>>\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."atomic-primops" or ((hsPkgs.pkgs-errors).buildDepError "atomic-primops"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          ];
        buildable = true;
        };
      exes = {
        "dev-example" = {
          depends = (pkgs.lib).optionals (!(!flags.dev)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."unagi-chan" or ((hsPkgs.pkgs-errors).buildDepError "unagi-chan"))
            ];
          buildable = if !flags.dev then false else true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."atomic-primops" or ((hsPkgs.pkgs-errors).buildDepError "atomic-primops"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "single" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."unagi-chan" or ((hsPkgs.pkgs-errors).buildDepError "unagi-chan"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ] ++ (pkgs.lib).optional (flags.compare-benchmarks) (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"));
          buildable = true;
          };
        "multi" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."unagi-chan" or ((hsPkgs.pkgs-errors).buildDepError "unagi-chan"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            ] ++ (pkgs.lib).optional (flags.compare-benchmarks) (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"));
          buildable = true;
          };
        };
      };
    }