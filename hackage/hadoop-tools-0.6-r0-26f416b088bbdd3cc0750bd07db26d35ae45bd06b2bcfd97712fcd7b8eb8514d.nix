{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hadoop-tools";
        version = "0.6";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Jacob Stanley <jacob@stanley.io>";
      author = "Jacob Stanley, Conrad Parker";
      homepage = "http://github.com/jystic/hadoop-tools";
      url = "";
      synopsis = "Fast command line tools for working with Hadoop.";
      description = "hh - Blazing fast interaction with HDFS\n\nIf built against hadoop-rpc-1.x.x.x then these tools support v9 of the\nHadoop RPC protocol (CDH 5.x and above).\n\nEarlier versions (< 0.6) can be installed using\n\n> hh cat     - Print the contents of a file to stdout\n> hh cd      - Change working directory\n> hh chmod   - Change permissions\n> hh du      - Show the amount of space used by file or directory\n> hh find    - Recursively search a directory tree\n> hh get     - Get a file\n> hh ls      - List the contents of a directory\n> hh mkdir   - Create a directory in the specified location\n> hh pwd     - Print working directory\n> hh rm      - Delete a file or directory\n> hh mv      - Rename a file or directory\n> hh version - Show version information";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hh" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.boxes)
            (hsPkgs.bytestring)
            (hsPkgs.configurator)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.hadoop-rpc)
            (hsPkgs.old-locale)
            (hsPkgs.optparse-applicative)
            (hsPkgs.protobuf)
            (hsPkgs.regex-pcre-builtin)
            (hsPkgs.split)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.vector)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.hadoop-rpc)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }