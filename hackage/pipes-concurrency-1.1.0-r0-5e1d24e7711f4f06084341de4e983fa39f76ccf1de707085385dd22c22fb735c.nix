{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.2";
      identifier = {
        name = "pipes-concurrency";
        version = "1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2013 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Concurrency for the pipes ecosystem";
      description = "This library provides light-weight concurrency primitives for\npipes, with the following features:\n\n* /Simple API/: Use only five functions\n\n* /Deadlock Safety/: Automatically avoid concurrency deadlocks\n\n* /Flexibility/: Build many-to-many communication topologies\n\n* /Dynamic Graphs/: Add or remove readers and writers at any time\n\nImport \"Control.Proxy.Concurrent\" to use the library.\n\nRead \"Control.Proxy.Concurrent.Tutorial\" for an tutorial.";
      buildType = "Simple";
    };
    components = {
      "pipes-concurrency" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.pipes)
          (hsPkgs.stm)
          (hsPkgs.transformers)
        ];
      };
    };
  }