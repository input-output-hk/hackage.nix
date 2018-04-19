{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bytestring-conversion";
          version = "0.3.1";
        };
        license = "MPL-2.0";
        copyright = "(C) 2014-2015 Toralf Wittner";
        maintainer = "Toralf Wittner <tw@dtex.org>";
        author = "Toralf Wittner";
        homepage = "https://github.com/twittner/bytestring-conversion/";
        url = "";
        synopsis = "Type-classes to convert values to and from ByteString.";
        description = "Defines the type-classes 'ToByteString' and 'FromByteString'\nto convert values to and from ByteString.";
        buildType = "Simple";
      };
      components = {
        bytestring-conversion = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.text
          ] ++ (if system.isWindows
            then [ hsPkgs.blaze-textual ]
            else [
              hsPkgs.double-conversion
            ]);
        };
        tests = {
          bytestring-conversion-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.bytestring-conversion
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
            ];
          };
        };
        benchmarks = {
          bytestring-conversion-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.bytestring-conversion
              hsPkgs.criterion
              hsPkgs.text
              hsPkgs.transformers
            ];
          };
        };
      };
    }