{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "console-program";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ariep@xs4all.nl";
      author = "Arie Peterson";
      homepage = "";
      url = "";
      synopsis = "Interprets the command line and a config file as commands and options";
      description = "This library provides an infrastructure to build command line programs. It provides the following features:\n- declare any number of \"actions\" (commands, or modes of operation, of the program);\n- declare options of the program;\n- collect options and actions from a configuration file and the command line, and execute the proper action.\nIt provides functionality similar to the \"cmdargs\" package. Main differences:\n- console-program does not use unsafePerformIO, and tries to give a more haskellish, referentially transparent interface;\n- it allows a full tree of \"modes\", instead of a list, so a command can have subcommands;\n- it parses a configuration file, in addition to the command line arguments.";
      buildType = "Simple";
    };
    components = {
      "console-program" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.utf8-string)
          (hsPkgs.fez-conf)
          (hsPkgs.template-haskell)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.utility-ht)
          (hsPkgs.parsec-extra)
        ];
      };
    };
  }