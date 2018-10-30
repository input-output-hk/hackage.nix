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
        name = "trackit";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Emil Axelsson";
      maintainer = "78emil@gmail.com";
      author = "Emil Axelsson";
      homepage = "";
      url = "";
      synopsis = "A command-line tool for live monitoring";
      description = "@trackit@ is a command-line tool that listens for changes\nin a user-supplied directory. Whenever there is a change,\na custom command is executed and its standard output is\nshown live in the terminal.\n\n= Examples\n\nShow a live listing of the files in the current directory:\n\n>> trackit --watch-dir=. --command=\"ls --color\"\n\nShow a live revision graph of a Git repository:\n\n>> GIT_DIR=`git rev-parse --git-dir`\n>> trackit --watch-tree=\$GIT_DIR --command=\"git log --graph --all --oneline --decorate --color\"\n\nFor more information, see the\n<https://github.com/emilaxelsson/trackit/blob/master/README.md README>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "trackit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.fsnotify)
            (hsPkgs.mtl)
            (hsPkgs.optparse-generic)
            (hsPkgs.process)
            (hsPkgs.process-extras)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.vty)
          ];
        };
      };
    };
  }