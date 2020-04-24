{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { compare-benchmarks = false; dev = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "unagi-chan"; version = "0.3.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brandon.m.simmons@gmail.com";
      author = "Brandon Simmons";
      homepage = "";
      url = "";
      synopsis = "Fast concurrent queues with a Chan-like API, and more";
      description = "This library provides implementations of concurrent FIFO queues (for both\ngeneral boxed and primitive unboxed values) that are fast, perform well\nunder contention, and offer a Chan-like interface. The library may be of\nlimited usefulness outside of x86 architectures where the fetch-and-add\ninstruction is not available.\n\nWe export several variations of our design; some support additional\nfunctionality while others try for lower latency by removing features or\nmaking them more restrictive (e.g. in the @Unboxed@ variants).\n\n- @Unagi@: a general-purpose near drop-in replacement for @Chan@.\n\n- @Unagi.Unboxed@: like @Unagi@ but specialized for primitive types; this\nmay perform better if a queue grows very large.\n\n- @Unagi.Bounded@: a bounded variant with blocking and non-blocking writes,\nand other functionality where a notion of the queue's capacity is\nrequired.\n\n- @Unagi.NoBlocking@: lowest latency implementations for when blocking\nreads aren't required.\n\n- @Unagi.NoBlocking.Unboxed@: like @Unagi.NoBlocking@ but for primitive\ntypes.\n\nSome of these may be deprecated in the future if they are found to provide\nlittle performance benefit, or no unique features; you should benchmark and\nexperiment with them for your use cases, and please submit pull requests\nfor additions to the benchmark suite that reflect what you find.\n\nHere is an example benchmark measuring the time taken to concurrently write\nand read 100,000 messages, with work divided amongst increasing number of\nreaders and writers, comparing against the top-performing queues in the\nstandard libraries. The inset graph shows a zoomed-in view on the\nimplementations here.\n\n<<http://i.imgur.com/J5rLUFn.png>>\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."atomic-primops" or ((hsPkgs.pkgs-errors).buildDepError "atomic-primops"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
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
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
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