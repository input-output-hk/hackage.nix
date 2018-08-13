{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "euphoria";
        version = "0.6.0.1";
      };
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
      "euphoria" = {
        depends  = [
          (hsPkgs.HUnit)
          (hsPkgs.base)
          (hsPkgs.elerea)
          (hsPkgs.data-default)
          (hsPkgs.enummapset-th)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.euphoria)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-th)
          ];
        };
      };
    };
  }