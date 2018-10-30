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
      specVersion = "1.22";
      identifier = {
        name = "csound-expression-typed";
        version = "0.0.9.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<anton.kholomiov@gmail.com>";
      author = "Anton Kholomiov";
      homepage = "https://github.com/anton-k/csound-expression-typed";
      url = "";
      synopsis = "typed core for the library csound-expression";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.Boolean)
          (hsPkgs.colour)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.wl-pprint)
          (hsPkgs.csound-expression-dynamic)
          (hsPkgs.temporal-media)
          (hsPkgs.hashable)
        ];
      };
    };
  }