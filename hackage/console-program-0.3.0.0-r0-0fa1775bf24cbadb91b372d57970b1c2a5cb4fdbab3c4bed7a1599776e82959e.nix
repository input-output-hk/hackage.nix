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
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ariep@xs4all.nl";
      author = "Arie Peterson";
      homepage = "";
      url = "";
      synopsis = "Interprets command line arguments and the contents of a config file as commands and options";
      description = "This library provides an infrastructure to build command line programs. It provides the following features:\n\n- declare any number of \\\"actions\\\" (commands, or modes of operation, of the program);\n\n- declare options of the program;\n\n- collect options and actions from a configuration file and the command line, and execute the proper action.\n\n\nExamples of using this library may be found in the \"Examples\" directory in the package tarball.\n\n\nIt provides functionality similar to the cmdargs package. Main differences:\n\n- console-program does not use unsafePerformIO, and tries to give a more haskellish, referentially transparent interface;\n\n- it allows a full tree of \\\"modes\\\", instead of a list, so a command can have subcommands;\n\n- it parses a configuration file, in addition to the command line arguments.";
      buildType = "Simple";
    };
    components = {
      "console-program" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.fez-conf)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.ansi-terminal)
          (hsPkgs.haskeline)
          (hsPkgs.transformers)
          (hsPkgs.utility-ht)
          (hsPkgs.split)
          (hsPkgs.parsec)
          (hsPkgs.parsec-extra)
        ];
      };
    };
  }