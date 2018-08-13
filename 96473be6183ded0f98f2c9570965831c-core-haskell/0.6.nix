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
      specVersion = "1.16";
      identifier = {
        name = "core-haskell";
        version = "0.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ChengXi Bao <c.x.bao@student.ucc.ie>";
      author = "ChengXi Bao";
      homepage = "";
      url = "";
      synopsis = "A subset of Haskell using in UCC for teaching purpose";
      description = "A subset of Haskell using in UCC for teaching purpose.\nIt enables a tiny subset of Haskell default, but the syntax can be customized,\nteacher can enable more syntax along with the teaching progress.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "core-haskell" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ghc)
            (hsPkgs.haskeline)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.hint)
          ];
        };
      };
    };
  }