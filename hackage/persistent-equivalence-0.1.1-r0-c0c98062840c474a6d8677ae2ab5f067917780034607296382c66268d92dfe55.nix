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
      specVersion = "1.6";
      identifier = {
        name = "persistent-equivalence";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chris Smith <cdsmith@gmail.com>";
      author = "Chris Smith <cdsmith@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Persistent equivalence relations (aka union-find)";
      description = "This is a semi-persistent data structure for equivalence\nrelations (known in the imperative world as union-find\nor disjoint set union).  It exhibits optimal performance\nwhen used in a linear pattern, but degrades when other\naccess patterns are used.\n\nThe basic idea is as given by Conchon and Filliatre in\ntheir 2007 paper \"A persistent union-find data structure.\"\nUnlike the implementation given in the paper, this version\nis safe with multiple threads, but does not optimize\nfor backtracking.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.diffarray)
        ];
      };
    };
  }