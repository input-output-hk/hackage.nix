{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "uu-parsinglib";
          version = "2.0.0";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "doaitse@swierstra.net";
        author = "Doaitse Swierstra";
        homepage = "http://www.cs.uu.nl/wiki/bin/view/HUT/ParserCombinators";
        url = "";
        synopsis = "New version of the Utrecht University parser combinator library";
        description = "New version of the Utrecht University parser combinator library, containing monadic, online, error correction, annotation free, applicative style parser combinators.";
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