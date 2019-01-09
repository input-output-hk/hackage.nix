{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hadoop-tools"; version = "0.4"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Jacob Stanley <jacob@stanley.io>";
      author = "Jacob Stanley, Conrad Parker";
      homepage = "http://github.com/jystic/hadoop-tools";
      url = "";
      synopsis = "Fast command line tools for working with Hadoop.";
      description = "hh - Blazing fast interaction with HDFS\n\n> Usage: hh COMMAND\n>\n> Available commands:\n>   cat                      Print the contents of a file to stdout\n>   cd                       Change working directory\n>   chmod                    Change permissions\n>   du                       Show the amount of space used by file or directory\n>   find                     Recursively search a directory tree\n>   get                      Get a file\n>   ls                       List the contents of a directory\n>   mkdir                    Create a directory in the specified location\n>   pwd                      Print working directory\n>   rm                       Delete a file or directory\n>   mv                       Rename a file or directory\n>   version                  Show version information";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hh" = {
          depends = [
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
            (hsPkgs.vector)
            ];
          };
        };
      };
    }