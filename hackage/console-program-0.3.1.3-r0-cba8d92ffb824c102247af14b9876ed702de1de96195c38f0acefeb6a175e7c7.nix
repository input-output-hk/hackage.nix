{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "console-program"; version = "0.3.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ariep@xs4all.nl";
      author = "Arie Peterson";
      homepage = "";
      url = "";
      synopsis = "Interpret the command line and contents of a config file as commands and options";
      description = "This library provides an infrastructure to build command line programs. It provides the following features:\n\n- declare any number of \\\"commands\\\" (modes of operation) of the program;\n\n- declare options of these commands;\n\n- collect options from a configuration file and the command line, and execute the proper command.\n\n\nExamples of using this library may be found in the Examples directory in the package tarball.\n\n\nIt provides functionality similar to the cmdargs package. Main differences:\n\n- console-program does not use unsafePerformIO, and tries to give a more haskellish, referentially transparent interface;\n\n- it allows a full tree of commands, instead of a list, so a command can have subcommands;\n\n- it parses a configuration file, in addition to the command line arguments.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."fez-conf" or ((hsPkgs.pkgs-errors).buildDepError "fez-conf"))
          (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
          (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
          (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."parsec-extra" or ((hsPkgs.pkgs-errors).buildDepError "parsec-extra"))
          ];
        buildable = true;
        };
      };
    }