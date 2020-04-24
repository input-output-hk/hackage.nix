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
      description = "hh - Blazing fast interaction with HDFS\n\nUsage: hh COMMAND\n\nAvailable commands:\n[@cat@]                      Print the contents of a file to stdout\n[@cd@]                       Change working directory\n[@chmod@]                    Change permissions\n[@du@]                       Show the amount of space used by file or directory\n[@find@]                     Recursively search a directory tree\n[@get@]                      Get a file\n[@ls@]                       List the contents of a directory\n[@mkdir@]                    Create a directory in the specified location\n[@pwd@]                      Print working directory\n[@rm@]                       Delete a file or directory\n[@mv@]                       Rename a file or directory\n[@version@]                  Show version information";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hh" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."boxes" or ((hsPkgs.pkgs-errors).buildDepError "boxes"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."configurator" or ((hsPkgs.pkgs-errors).buildDepError "configurator"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hadoop-rpc" or ((hsPkgs.pkgs-errors).buildDepError "hadoop-rpc"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."protobuf" or ((hsPkgs.pkgs-errors).buildDepError "protobuf"))
            (hsPkgs."regex-pcre-builtin" or ((hsPkgs.pkgs-errors).buildDepError "regex-pcre-builtin"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }