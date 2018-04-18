{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "querystring-pickle";
          version = "0.1.4";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "";
        url = "";
        synopsis = "Picklers for de/serialising Generic data types to and from query strings";
        description = "Type classes, pickling combinators, and GHC.Generics implementations for Query Strings";
        buildType = "Simple";
      };
      components = {
        querystring-pickle = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
        tests = {
          querystring-pickle-tests = {
            depends  = [
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.querystring-pickle
            ];
          };
        };
      };
    }