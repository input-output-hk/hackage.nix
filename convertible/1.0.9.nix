{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      buildtests = false;
      time_gte_113 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "convertible";
          version = "1.0.9";
        };
        license = "LicenseRef-LGPL";
        copyright = "Copyright (c) 2009-2010 John Goerzen";
        maintainer = "John Goerzen <jgoerzen@complete.org>";
        author = "John Goerzen";
        homepage = "http://hackage.haskell.org/cgi-bin/hackage-scripts/package/convertible";
        url = "";
        synopsis = "Typeclasses and instances for converting between types";
        description = "convertible provides a typeclass with a single function\nthat is designed to help convert between different types: numeric\nvalues, dates and times, and the like.  The conversions perform bounds\nchecking and return a pure Either value.  This means that you need\nnot remember which specific function performs the conversion you\ndesire.\n\nAlso included in the package are optional instances that provide\nconversion for various numeric and time types, as well as utilities\nfor writing your own instances.\n\nFinally, there is a function that will raise an exception on\nbounds-checking violation, or return a bare value otherwise,\nimplemented in terms of the safer function described above.\n\nConvertible is also used by HDBC 2.0 for handling marshalling of\ndata to and from databases.\n\nConvertible is backed by an extensive test suite and passes tests\non GHC and Hugs.";
        buildType = "Simple";
      };
      components = {
        convertible = {
          depends  = [
            hsPkgs.mtl
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.old-time
              hsPkgs.time
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.old-locale
            ] ++ [ hsPkgs.time ]
            else [ hsPkgs.base ]);
        };
        exes = {
          runtests = {
            depends  = optionals _flags.buildtests [
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.testpack
            ];
          };
        };
      };
    }