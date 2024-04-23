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
      identifier = { name = "sodium"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Stephen Blackheath 2012";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath";
      homepage = "";
      url = "";
      synopsis = "Sodium Reactive Programming (FRP) System";
      description = "A general purpose Reactive Programming (FRP) system.\n\n* Goals include simplicity and completeness, but it is currently not built for speed.\n\n* Applicative style: Event implements Functor and Behaviour implements Applicative.\n\n* FRP logic is tied to partitions, within which consistency is guaranteed.\nThis concept allows you to selectively relax consistency guarantees to\nfacilitate parallelism.\n\n* Instead of the common approach where inputs are fed into the front of a monolithic\n\\'reactimate\\', Sodium allows you to push inputs in from scattered places in IO.\n\n* Integration with IO: Extensible to provide lots of scope for lifting IO into FRP\nlogic.\n\n* Push-based imperative implementation.\n\nSee the /examples/ directory for test cases and examples.\n\nChanges: 0.2.0.0 fix some value recursion deadlocks and improve docs;\n0.3.0.0 add mergeWith, make cross asynchronous";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }