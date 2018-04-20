{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "fast-tags";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Evan Laforge <qdunkan@gmail.com>";
        author = "Evan Laforge";
        homepage = "";
        url = "";
        synopsis = "Fast incremental vi tags.";
        description = "Yet another tags program.  Like hasktags, it uses its own parser rather\nthan haskell-src or haskell-src-exts, so it's fast.  It should be even\nfaster than hasktags because it uses Text instead of String.  It also\nunderstands hsc files, though not literate haskell.  It's also less buggy\nthan hasktags.\n\nIn addition, it will load an existing tags file and merge generated tags.\n\nThe intent is to bind it to vim's BufWrite autocommand to automatically\nkeep the tags file up to date.";
        buildType = "Simple";
      };
      components = {
        exes = {
          fast-tags = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.text
            ];
          };
        };
      };
    }