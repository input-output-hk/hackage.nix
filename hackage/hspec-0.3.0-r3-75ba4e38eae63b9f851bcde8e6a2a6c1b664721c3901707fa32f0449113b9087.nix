{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "hspec";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Trystan Spangler";
      maintainer = "trystan.s@comcast.net";
      author = "Trystan Spangler";
      homepage = "https://github.com/trystan/hspec";
      url = "https://github.com/trystan/hspec";
      synopsis = "Behavior Driven Development for Haskell";
      description = "Behavior Driven Development for Haskell\n\nHspec is based on the Ruby library RSpec - so much of what applies to RSpec also applies to Hspec. Hspec ties together /descriptions/ of behavior and /examples/ of that behavior. The examples can then be run as tests and the output summarises what needs to be implemented.";
      buildType = "Custom";
    };
    components = {
      "hspec" = {
        depends  = [
          (hsPkgs.HUnit)
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
        ];
      };
    };
  }