{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dunai-test"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ivan.perez@keera.co.uk";
      author = "Ivan Perez";
      homepage = "http://github.com/ivanperez-keera/dunai";
      url = "";
      synopsis = "Testing library for Dunai";
      description = "Testing and debugging library for Duani.\n\nIt contains:\n\n* Debugging signal functions using \"Debug.Trace\".\n* A definition of Temporal Predicates based on LTL.\n* Monitoring signal functions with ptLTL using Signal Predicates.\n* A definition of Streams, and a Stream manipulation API.\n* Signal/stream generators for QuickCheck.\n\nA detailed explanation of these ideas is included in the ICFP 2017 paper\n<https://dl.acm.org/citation.cfm?id=3110246 Testing and Debugging Functional Reactive Programming>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."dunai" or ((hsPkgs.pkgs-errors).buildDepError "dunai"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."normaldistribution" or ((hsPkgs.pkgs-errors).buildDepError "normaldistribution"))
          ];
        buildable = true;
        };
      };
    }