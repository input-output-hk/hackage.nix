{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      haste-inst = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hplayground";
        version = "0.1.2.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto Gomez Corona";
      homepage = "https://github.com/agocorona/hplayground";
      url = "";
      synopsis = "monadic, reactive Formlets running in the Web browser";
      description = "client-side haskell framework that compiles to javascript with the haste compiler. See homepage";
      buildType = "Simple";
    };
    components = {
      "hplayground" = {
        depends  = if _flags.haste-inst
          then [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.monads-tf)
            (hsPkgs.haste-lib)
            (hsPkgs.haste-perch)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.monads-tf)
            (hsPkgs.haste-compiler)
            (hsPkgs.haste-perch)
          ];
      };
    };
  }