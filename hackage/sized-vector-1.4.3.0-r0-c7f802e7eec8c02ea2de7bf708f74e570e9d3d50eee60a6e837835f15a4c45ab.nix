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
        name = "sized-vector";
        version = "1.4.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "(C) Hiromi ISHII 2013";
      maintainer = "konn.jinro_at_gmail.com";
      author = "Hiromi ISHII";
      homepage = "https://github.com/konn/sized-vector";
      url = "";
      synopsis = "Size-parameterized vector types and functions.";
      description = "Size-parameterized vector types and functions using a data-type promotion.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.constraints)
          (hsPkgs.deepseq)
          (hsPkgs.equational-reasoning)
          (hsPkgs.hashable)
          (hsPkgs.monomorphic)
          (hsPkgs.template-haskell)
          (hsPkgs.type-natural)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.7") (hsPkgs.singletons)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.7") (hsPkgs.singletons);
      };
    };
  }