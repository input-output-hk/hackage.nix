{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "euphoria"; version = "0.8.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "aljee@hyper.cx <Takano Akio>";
      author = "Takano Akio, Andrew Richards, Liyang HU";
      homepage = "http://github.com/tsurucapital/euphoria";
      url = "";
      synopsis = "Dynamic network FRP with events and continuous values";
      description = "Euphoria is FRP with practicality.\n\nFRP is a good way to model computations which need run for an extended\nperiod of time, react to incoming events, and continually produce\noutput. Simulations, games, and GUIs are all good candidates for FRP.\n\nIn Euphoria, networks (dataflow graphs) are dynamic. Networks are\nfirst-class values which can be passed around inside of other\nnetworks, and they can be connected together at any time. This\nflexibility allows complicated, real-world problems to be modeled with\nFRP.\n\nThough Euphoria is flexible and high-level, it makes some concessions\nfor performance and the underlying implementation.\n\nEuphoria works in discrete steps. You will construct the body of your\nprogram as an FRP network. To get results, you must perform an IO\naction to step the network. After stepping, your network will have\nproduced some result, such as a string, which you can print to the\nscreen. A network can also produce IO actions as an output. Step the\nnetwork as many times as necessary to continue running your program.\n\nA simulation, game, or GUI will probably loop while stepping until the\nuser terminates the program.\n\nEuphoria is mostly concerned with three types: Signal, Event, and\nDiscrete.\n\nSignal represents a continuous value that changes with each\nstep of the network. Discrete is like Signal, but it is possible to\ndetermine if its value has not changed, and avoid unnecessary\ncomputation. As long as a Signal or Discrete exists, it will contain a\nvalue. Event represents something that exists for only one moment in\ntime, such as a packet received over a socket, or a mouse click.\n\nSignals and Discretes are instances of Monad and Applicative. Events\nare instances of Monoid.\n\nSignalGen is the outer monad, where networks are constructed.\nSignalGen is an instance of Monad and Applicative. SignalGens inside\nof Signals, Discretes, or Events can be used to attach new networks to\nthe existing network on the fly.\n\nSignals, Discretes and Events may contain other Signals, Discretes or\nEvents. Euphoria encourages the use of dynamic network construction\nusing these higher-order FRP types, and they can be attached or\ndetached from the network with ease. Euphoria relies on garbage\ncollection and weak pointers to prune the network when parts of it are\nno longer needed.\n\nEuphoria is built on top of the Elerea library by Patai Gergely.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."elerea" or ((hsPkgs.pkgs-errors).buildDepError "elerea"))
          (hsPkgs."enummapset-th" or ((hsPkgs.pkgs-errors).buildDepError "enummapset-th"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."euphoria" or ((hsPkgs.pkgs-errors).buildDepError "euphoria"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-th" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-th"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."euphoria" or ((hsPkgs.pkgs-errors).buildDepError "euphoria"))
            (hsPkgs."enummapset-th" or ((hsPkgs.pkgs-errors).buildDepError "enummapset-th"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }