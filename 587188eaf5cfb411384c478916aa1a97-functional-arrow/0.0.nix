{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "functional-arrow";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "";
        url = "";
        synopsis = "Combinators that allow for a more functional/monadic style of Arrow programming";
        description = "If you program with Arrows you have two choices:\nUse the plain Arrow combinators, that are cumbersome to use,\nor use special Arrow syntax, that is built into all Haskell compilers\nand is still not very functional programming style.\nThe arrow syntax still forces you to introduce temporary names,\nthat you would not need in a functional notation.\n\nWhere you would write things like\n\n> mix <<< (id &&& delay) <<< lowpass\n\nusing plain Arrow combinators, you can now write\n\n> lowpass >>>= \\x ->\n>    mix <<< (listen x &&& (delay <<< listen x))\n\nwhere the @(>>>=)@ resembles the monadic bind\nand allows you for shared access to an arrow result.\nThus it can be used like a @let@.";
        buildType = "Simple";
      };
      components = {
        "functional-arrow" = {
          depends  = [
            hsPkgs.HList
            hsPkgs.base
          ];
        };
      };
    }