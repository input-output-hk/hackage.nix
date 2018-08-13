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
        name = "HaTeX-qq";
        version = "0.0.1.1";
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
      "HaTeX-qq" = {
        depends  = [
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