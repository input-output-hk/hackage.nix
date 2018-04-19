{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hadoop-tools";
          version = "1.0.1";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "Jacob Stanley <jacob@stanley.io>";
        author = "Jacob Stanley, Conrad Parker, Luke Clifton";
        homepage = "http://github.com/jystic/hadoop-tools";
        url = "";
        synopsis = "Fast command line tools for working with Hadoop.";
        description = "hh - Blazing fast interaction with HDFS\n\nThese tools support v9 of the Hadoop RPC protocol (CDH 5.x and above).\n\n> hh cat     - Print the contents of a file to stdout\n> hh cd      - Change working directory\n> hh chmod   - Change permissions\n> hh du      - Show the amount of space used by file or directory\n> hh find    - Recursively search a directory tree\n> hh get     - Get a file\n> hh ls      - List the contents of a directory\n> hh mkdir   - Create a directory in the specified location\n> hh pwd     - Print working directory\n> hh rm      - Delete a file or directory\n> hh mv      - Rename a file or directory\n> hh version - Show version information";
        buildType = "Simple";
      };
      components = {
        exes = {
          hh = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.boxes
              hsPkgs.bytestring
              hsPkgs.configurator
              hsPkgs.clock
              hsPkgs.exceptions
              hsPkgs.filepath
              hsPkgs.hadoop-rpc
              hsPkgs.old-locale
              hsPkgs.optparse-applicative
              hsPkgs.protobuf
              hsPkgs.regex-pcre-builtin
              hsPkgs.split
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.unix
              hsPkgs.vector
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.hadoop-rpc
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.vector
            ];
          };
        };
      };
    }