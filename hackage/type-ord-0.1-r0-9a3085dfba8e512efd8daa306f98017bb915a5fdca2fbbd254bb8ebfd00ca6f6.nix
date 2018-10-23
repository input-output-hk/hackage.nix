{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0.1";
      identifier = {
        name = "type-ord";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Nicolas Frisby <nicolas.frisby@gmail.com>";
      author = "Nicolas Frisby <nicolas.frisby@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Type-level comparison operator";
      description = "Type-level comparison operator with instances for ()-terminated\n@type-digit@ numerals until <http://hackage.haskell.org/trac/ghc/ticket/1894>\nis resolved.";
      buildType = "Simple";
    };
    components = {
      "type-ord" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.type-booleans)
          (hsPkgs.type-spine)
          (hsPkgs.type-digits)
        ];
      };
    };
  }