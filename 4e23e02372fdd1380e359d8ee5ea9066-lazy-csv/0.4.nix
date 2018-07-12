{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "lazy-csv";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "Malcolm Wallace, Ian Lynagh, and Well Typed LLP";
        maintainer = "Malcolm Wallace <malcolm.wallace@me.com>";
        author = "Malcolm Wallace <malcolm.wallace@me.com>,\nIan Lynagh <igloo@earth.li>";
        homepage = "http://code.haskell.org/lazy-csv";
        url = "";
        synopsis = "Efficient lazy parsers for CSV (comma-separated values).";
        description = "The CSV format is defined by RFC 4180.\nThese efficient lazy parsers (String and ByteString variants)\ncan report all CSV formatting errors, whilst also\nreturning all the valid data, so the user can choose\nwhether to continue, to show warnings, or to halt on\nerror.  Valid fields retain information about their\noriginal location in the input, so a secondary parser from\ntextual fields to typed values can give intelligent error\nmessages.";
        buildType = "Simple";
      };
      components = {
        "lazy-csv" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
        exes = {
          "csvSelect" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
            ];
          };
        };
      };
    }