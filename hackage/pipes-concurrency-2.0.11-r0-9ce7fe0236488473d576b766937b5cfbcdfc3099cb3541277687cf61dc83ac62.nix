{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.2";
      identifier = { name = "pipes-concurrency"; version = "2.0.11"; };
      license = "BSD-3-Clause";
      copyright = "2013, 2014 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Concurrency for the pipes ecosystem";
      description = "This library provides light-weight concurrency primitives for\npipes, with the following features:\n\n* /Simple API/: Use only five functions\n\n* /Deadlock Safety/: Automatically avoid concurrency deadlocks\n\n* /Flexibility/: Build many-to-many and cyclic communication topologies\n\n* /Dynamic Graphs/: Add or remove readers and writers at any time\n\nImport \"Pipes.Concurrent\" to use the library.\n\nRead \"Pipes.Concurrent.Tutorial\" for a tutorial.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.contravariant)
          (hsPkgs.pipes)
          (hsPkgs.semigroups)
          (hsPkgs.stm)
          (hsPkgs.void)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.pipes)
            (hsPkgs.pipes-concurrency)
            (hsPkgs.stm)
            (hsPkgs.async)
            ];
          };
        };
      };
    }