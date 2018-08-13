{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "t-regex";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "A.SerranoMena@uu.nl";
      author = "Alejandro Serrano";
      homepage = "";
      url = "";
      synopsis = "Matchers and grammars using tree regular expressions";
      description = "";
      buildType = "Simple";
    };
    components = {
      "t-regex" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.recursion-schemes)
          (hsPkgs.template-haskell)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.lens)
          (hsPkgs.QuickCheck)
        ];
      };
    };
  }