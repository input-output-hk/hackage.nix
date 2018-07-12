{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "applicative-parsec";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "Copyright 2013-2015 Karl Voelker";
        maintainer = "aparsec@karlv.net";
        author = "Karl Voelker";
        homepage = "https://www.github.com/ktvoelker/AParsec";
        url = "";
        synopsis = "An applicative parser combinator library";
        description = "The goal of this library is to take advantage of the power of applicatives to\nprovide not only a parser combinator library, but grammar analysis and\nvalidation tools. Right now, those tools are minimal, but do include a BNF\ngenerator.";
        buildType = "Simple";
      };
      components = {
        "applicative-parsec" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.lens
            hsPkgs.text
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.applicative-parsec
            ];
          };
        };
      };
    }