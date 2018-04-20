{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "uu-parsinglib";
          version = "2.5.3";
        };
        license = "MIT";
        copyright = "S Doaitse Swierstra";
        maintainer = "Doaitse Swierstra";
        author = "Doaitse Swierstra, Utrecht University";
        homepage = "http://www.cs.uu.nl/wiki/bin/view/HUT/ParserCombinators";
        url = "";
        synopsis = "Online, error-correcting parser combinators; monadic and applicative interfaces";
        description = "New version of the Utrecht University parser combinator library, which  provides online, error correction,\nannotation free, applicative style parser combinators. In addition to this we do  provide a monadic interface.\nParsers do analyse themselves to avoid commonly made errors. A recent addition was the combinator @`pMerge`@ and\nassociates which generalises merging and permuting parsers.\n\nThe module \"Text.ParserCombinators.UU.Examples\" contains a  ready-made @main@  function,\nwhich can be called to see e.g. the error correction at work. It contains haddock documentation;\ntry all the small tests for yourself to see the correction process at work, and to get a\nfeeling for how to use the various combinators.\n\nThe file \"Text.ParserCombinators.UU.Changelog\" contains a log of the most recent changes and additions\n\nThe file \"Text.ParserCombinators.UU.README\" contains some references to background information\n";
        buildType = "Simple";
      };
      components = {
        uu-parsinglib = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
          ];
        };
      };
    }