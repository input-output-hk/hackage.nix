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
      specVersion = "1.10";
      identifier = {
        name = "HaTeX-qq";
        version = "0.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Hiromi ISHII 2015";
      maintainer = "Hiromi ISHII <konn.jinro_at_gmail.com>";
      author = "Hiromi ISHII <konn.jinro_at_gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Quasiquoters for HaTeX";
      description = "Quasiquoters for HaTeX";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.uniplate)
          (hsPkgs.HaTeX)
          (hsPkgs.antiquoter)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.haskell-src-meta)
        ];
      };
    };
  }