{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sql-words";
          version = "0.1.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2013-2017 Kei Hibino";
        maintainer = "ex8k.hibino@gmail.com";
        author = "Kei Hibino";
        homepage = "http://khibino.github.io/haskell-relational-record/";
        url = "";
        synopsis = "SQL keywords data constructors into OverloadedString";
        description = "This package contiains SQL keywords constructors defined as\nOverloadedString literals and helper functions to concate these.";
        buildType = "Simple";
      };
      components = {
        "sql-words" = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          "monoids" = {
            depends  = [
              hsPkgs.base
              hsPkgs.quickcheck-simple
              hsPkgs.QuickCheck
              hsPkgs.sql-words
            ];
          };
        };
      };
    }