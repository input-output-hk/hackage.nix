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
      specVersion = "0";
      identifier = {
        name = "xtc";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "martijn@cs.uu.nl";
      author = "Martijn Schrage";
      homepage = "";
      url = "";
      synopsis = "eXtended & Typed Controls for wxHaskell.";
      description = "The XTC library provides a typed interface to several wxHaskell controls.\n\n* radio view (typed radio box)\n\n* single-selection list view (typed single-selection list box)\n\n* muliple-selection list view (typed multiple-selection list box)\n\n* choice view (typed choice box)\n\n* value entry (typed text entry)\n\nXTC controls keep track of typed values and items, rather than being string based. Selections in XTC controls consist of actual values instead of indices.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.wx)
          (hsPkgs.wxcore)
        ];
      };
    };
  }