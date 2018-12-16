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
        name = "hslinks";
        version = "0.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund <hans@hanshoglund.se>";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "Resolves links to Haskell identifiers.";
      description = "To be written.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hslinks" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.hint)
            (hsPkgs.process)
            (hsPkgs.MemoTrie)
            (hsPkgs.regex-compat)
          ];
        };
      };
    };
  }