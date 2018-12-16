{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = {
        name = "signed-multiset";
        version = "0.3.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Stefan Holdermans";
      maintainer = "stefan@vectorfabrics.com";
      author = "Stefan Holdermans";
      homepage = "";
      url = "";
      synopsis = "Multisets with negative membership.";
      description = "Multisets (or bags) are sets in which elements may occur more than once.\nThe number of times an element occurs in a multiset is called its\n/multiplicity/.\n\nThis package provides an efficient implementation of so-called\n/signed multisets/ (also known as hybrid sets or shadow sets), which\ngeneralise multisets by allowing for /negative membership/.\nThat is, elements in a signed multiset can have negative multiplicities.\n\nSee also: Wayne D. Blizard. Negative membership.\n/Notre Dame Journal of Formal Logic/, 31(3):346--368, 1990.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }