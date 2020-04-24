{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "edit-distance-vector"; version = "1.0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Thomas Sutton and others.";
      maintainer = "me@thomas-sutton.id.au";
      author = "Thomas Sutton";
      homepage = "https://github.com/thsutton/edit-distance-vector";
      url = "";
      synopsis = "Calculate edit distances and edit scripts between vectors.";
      description = "An implementation of the Wagner–Fischer dynamic programming algorithm to\nfind the optimal edit script and cost between two sequences.\n\nThe implementation in this package is specialised to sequences represented\nwith \"Data.Vector\" but is otherwise agnostic to:\n\n* The type of values in the vectors;\n\n* The type representing edit operations; and\n\n* The type representing the cost of operations.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."edit-distance-vector" or ((hsPkgs.pkgs-errors).buildDepError "edit-distance-vector"))
            (hsPkgs."quickcheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-instances"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }