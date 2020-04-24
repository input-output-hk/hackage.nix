{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = { name = "list-tries"; version = "0.6.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Matti Niemenmaa <matti.niemenmaa+list-tries@iki.fi>";
      author = "Matti Niemenmaa";
      homepage = "http://iki.fi/matti.niemenmaa/list-tries/";
      url = "";
      synopsis = "Tries and Patricia tries: finite sets and maps for list keys";
      description = "This library provides implementations of finite sets and maps for list keys\nusing tries, both simple and of the Patricia kind. In most (or all? sorry,\nhaven't benchmarked yet) cases, the Patricia tries will have better\nperformance, so use them unless you have reasons not to.\n\nThe data types are parametrized over the map type they use internally to\nstore the child nodes: this allows extending them to support different kinds\nof key types or increasing efficiency. Child maps are required to be\ninstances of the Map class in Data.ListTrie.Base.Map. Some operations\nadditionally require an OrdMap instance.\n\nThe Eq, Ord, and Enum modules contain ready structures for key types which\nare instances of those classes, using lists of pairs, Data.Map, and\nData.IntMap respectively.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"));
        buildable = true;
        };
      tests = {
        "list-tries-tests" = {
          depends = [
            (hsPkgs."list-tries" or ((hsPkgs.pkgs-errors).buildDepError "list-tries"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."ChasingBottoms" or ((hsPkgs.pkgs-errors).buildDepError "ChasingBottoms"))
            ];
          buildable = true;
          };
        };
      };
    }