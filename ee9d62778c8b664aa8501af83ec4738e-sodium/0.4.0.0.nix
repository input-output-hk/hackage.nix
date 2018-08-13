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
        name = "sodium";
        version = "0.4.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Stephen Blackheath 2012";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath";
      homepage = "";
      url = "";
      synopsis = "Sodium Reactive Programming (FRP) System";
      description = "A general purpose Reactive Programming (FRP) system. This is part of a project to\nimplement reactive libraries with similar interfaces across a range of programming\nlanguages.\n\n* Goals include simplicity and completeness.\n\n* Applicative style: Event implements Functor and Behaviour implements Applicative.\n\n* Instead of the common approach where inputs are fed into the front of a monolithic\n\\'reactimate\\', Sodium allows you to push inputs in from scattered places in IO.\n\n* Integration with IO: Extensible to provide lots of scope for lifting IO into FRP\nlogic.\n\n* Push-based imperative implementation.\n\nSee the /examples/ directory for test cases and examples.\n\nChanges: 0.2.0.0 fix some value recursion deadlocks and improve docs;\n0.3.0.0 add mergeWith, make cross asynchronous;\n0.4.0.0 API revamp to remove an excess type variable. Parallelism stuff to be rethought.";
      buildType = "Simple";
    };
    components = {
      "sodium" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
        ];
      };
    };
  }