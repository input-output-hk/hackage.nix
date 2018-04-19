{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "first-and-last";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2015 Mark Andrus Roberts";
        maintainer = "markandrusroberts@gmail.com";
        author = "Mark Andrus Roberts";
        homepage = "https://github.com/markandrus/first-and-last";
        url = "";
        synopsis = "First and Last generalized to return up to n values";
        description = "This library provides data types @<Data-Monoid-First.html#t:First-39- First' n>@ and @<Data-Monoid-Last.html#t:Last-39- Last' n>@ generalizing @First@ and @Last@ from @<https://hackage.haskell.org/package/base/docs/Data-Monoid.html Data.Monoid>@ to return up to @n@ values.\n\n>>> getFirst' (foldMap pure [1,2,3,4] :: First' 2 Int)\n[1,2]\n\n>>> getLast' (foldMap pure [1,2,3,4] :: Last' 2 Int)\n[3,4]\n\nIt also provides API-compatible type synonyms @<Data-Monoid-First.html#t:First First>@ and @<Data-Monoid-Last.html#t:Last Last>@ as well as functions @<Data-Monoid-First.html#v:getFirst getFirst>@ and @<Data-Monoid-Last.html#v:getLast getLast>@, allowing you to use it as a drop-in replacement.";
        buildType = "Simple";
      };
      components = {
        first-and-last = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          Golden = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.first-and-last
            ];
          };
        };
      };
    }