{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "persistent-equivalence";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chris Smith <cdsmith@gmail.com>";
      author = "Chris Smith <cdsmith@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Persistent equivalence relations (aka union-find)";
      description = "This is a persistent data structure for equivalence\nrelations (known in the imperative world as union-find\nor disjoint set union).  It exhibits optimal performance\nwhen used in a linear pattern, but degrades when other\naccess patterns are used.\n\nThe basic idea is as given by Conchon and Filliatre in\ntheir 2007 paper, \\\"A persistent union-find data\nstructure.\\\"  Unlike the implementation given in the\npaper, this version is safe with multiple threads, but\ndoes not optimize for backtracking.\n\nVersion 0.3 contains some performance improvements for\nconcurrent applications, and removes the 'repr' function,\nwhich was poorly defined and had no good uses.";
      buildType = "Simple";
    };
    components = {
      "persistent-equivalence" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.diffarray)
        ];
      };
    };
  }