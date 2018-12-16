{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { binary = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "relational-record-examples";
        version = "0.5.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Shohei Murayama <shohei.murayama@gmail.com>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>\nShohei Murayama <shohei.murayama@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Examples of Haskell Relationa Record";
      description = "Provides examples of Haskell Relational Record";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.HDBC)
          (hsPkgs.HDBC-session)
          (hsPkgs.HDBC-sqlite3)
          (hsPkgs.persistable-record)
          (hsPkgs.relational-query)
          (hsPkgs.relational-query-HDBC)
          (hsPkgs.template-haskell)
          (hsPkgs.relational-schemas)
        ] ++ pkgs.lib.optional (compiler.isGhc && false) (hsPkgs.ghc-prim);
      };
      exes = {
        "examples" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.product-isomorphic)
            (hsPkgs.relational-query)
            (hsPkgs.relational-record-examples)
            (hsPkgs.template-haskell)
            (hsPkgs.time)
          ] ++ pkgs.lib.optional (compiler.isGhc && false) (hsPkgs.ghc-prim);
        };
        "specialized-examples" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.product-isomorphic)
            (hsPkgs.relational-query)
            (hsPkgs.relational-record-examples)
            (hsPkgs.template-haskell)
            (hsPkgs.time)
          ] ++ pkgs.lib.optional (compiler.isGhc && false) (hsPkgs.ghc-prim);
        };
      };
    };
  }