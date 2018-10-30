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
      specVersion = "1.8";
      identifier = {
        name = "algebra-dag";
        version = "0.1.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alex@etc-network.de";
      author = "Alexander Ulrich";
      homepage = "";
      url = "";
      synopsis = "Infrastructure for DAG-shaped relational algebra plans";
      description = "This library contains infrastructure for DAG-shaped plans of relational operators.\nIt offers an API for construction and modification of algebra plans and a DSL\nfor specifying rewrites on plans. Examples of usage can be found in the packages\n<http://hackage.haskell.org/package/DSH DSH> and\n<http://hackage.haskell.org/package/algebra-sql algebra-sql>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.fgl)
          (hsPkgs.transformers)
          (hsPkgs.parsec)
          (hsPkgs.aeson)
        ];
      };
    };
  }