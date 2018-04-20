{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hslinks";
          version = "0.6.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Hans Hoglund <hans@hanshoglund.se>";
        author = "Hans Hoglund";
        homepage = "";
        url = "";
        synopsis = "Resolves links to Haskell identifiers.";
        description = "A simple utility program that resolves links to Haskell identifiers in Markdown-style text.\nThis is useful if you want to maintain documentation of a Haskell program or library outside\nthe source code but still have links the Haddock-generated API documentation.\n\nFor usage, see <https://github.com/hanshoglund/hslinks>";
        buildType = "Simple";
      };
      components = {
        exes = {
          hslinks = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.hint
              hsPkgs.process
              hsPkgs.MemoTrie
              hsPkgs.regex-compat
            ];
          };
        };
      };
    }