{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0";
      identifier = {
        name = "haskell-src-exts-qq";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mathieu Boespflug <mboes@tweag.net>";
      author = "Mathieu Boespflug";
      homepage = "";
      url = "";
      synopsis = "A quasiquoter for haskell-src-exts.";
      description = "Allows one to write programs that generate Haskell programs much\nmore concisely and legibly. This package supports:\n\n* Antiquotations, denoted by stealing the splice syntax of\nTemplate Haskell, for example @[\$hs| \$x ++ \$(Hs.strE \"bar\") |]@.\nSplices may not nested.\n* Antiquoting names in patterns. Names that are antiquoted appear\nsurrounded by double parentheses. For instance:\n\n> let f = Hs.name \"foo\" in [\$hs| ((f)) x = x + x |]";
      buildType = "Simple";
    };
    components = {
      "haskell-src-exts-qq" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.syb)
          (hsPkgs.template-haskell)
          (hsPkgs.haskell-src-exts)
        ];
      };
    };
  }