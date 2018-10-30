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
        name = "algebra-sql";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<alex@etc-network.de>";
      author = "Alexander Ulrich, Moritz Bruder";
      homepage = "";
      url = "";
      synopsis = "Relational Algebra and SQL Code Generation";
      description = "This library contains data types for relational table algebra operators. DAG plans\n(<http://hackage.haskell.org/package/algebra-dag algebra-dag>) over these operators\ncan be compiled into compact SQL:2003 queries.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.pretty)
          (hsPkgs.fgl)
          (hsPkgs.transformers)
          (hsPkgs.parsec)
          (hsPkgs.ghc-prim)
          (hsPkgs.bytestring)
          (hsPkgs.errors)
          (hsPkgs.dlist)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.multiset)
          (hsPkgs.aeson)
          (hsPkgs.algebra-dag)
        ];
      };
      exes = {
        "tadot" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.template-haskell)
            (hsPkgs.pretty)
            (hsPkgs.fgl)
            (hsPkgs.transformers)
            (hsPkgs.parsec)
            (hsPkgs.ghc-prim)
            (hsPkgs.bytestring)
            (hsPkgs.aeson)
            (hsPkgs.algebra-dag)
          ];
        };
        "sqlgen" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.template-haskell)
            (hsPkgs.pretty)
            (hsPkgs.fgl)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.transformers)
            (hsPkgs.parsec)
            (hsPkgs.ghc-prim)
            (hsPkgs.bytestring)
            (hsPkgs.errors)
            (hsPkgs.dlist)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.multiset)
            (hsPkgs.aeson)
            (hsPkgs.algebra-dag)
          ];
        };
      };
    };
  }