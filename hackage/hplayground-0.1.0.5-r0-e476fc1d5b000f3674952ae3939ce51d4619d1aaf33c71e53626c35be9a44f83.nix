{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { haste-inst = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hplayground";
        version = "0.1.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto Gómez Corona";
      homepage = "https://github.com/agocorona/hplayground";
      url = "";
      synopsis = "a client-side haskell framework that compiles to javascript with the haste compiler";
      description = "Formlets with reactive effects in the client side. See homepage";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = if flags.haste-inst
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