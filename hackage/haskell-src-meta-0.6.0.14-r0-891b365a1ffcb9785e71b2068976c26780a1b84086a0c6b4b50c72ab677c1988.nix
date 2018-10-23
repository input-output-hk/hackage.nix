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
        name = "haskell-src-meta";
        version = "0.6.0.14";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Matt Morrow";
      maintainer = "Ben Millwood <haskell@benmachine.co.uk>";
      author = "Matt Morrow";
      homepage = "";
      url = "";
      synopsis = "Parse source to template-haskell abstract syntax.";
      description = "The translation from haskell-src-exts abstract syntax\nto template-haskell abstract syntax isn't 100% complete yet.";
      buildType = "Simple";
    };
    components = {
      "haskell-src-meta" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.pretty)
          (hsPkgs.syb)
          (hsPkgs.template-haskell)
          (hsPkgs.th-orphans)
        ] ++ [
          (hsPkgs.haskell-src-exts)
        ];
      };
    };
  }