{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "github-backup"; version = "1.20171126"; };
      license = "GPL-3.0-only";
      copyright = "2012 Joey Hess";
      maintainer = "Joey Hess <id@joeyh.name>";
      author = "Joey Hess";
      homepage = "https://github-backup.branchable.com/";
      url = "";
      synopsis = "backs up everything github knows about a repository, to the repository";
      description = "github-backup is a simple tool you run in a git repository you cloned from\nGithub. It backs up everything Github knows about the repository, including\nother forks, issues, comments, milestones, pull requests, and watchers.\nAlso includes gitriddance, which can be used to close all open issues and\npull requests.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.hslogger or (pkgs.buildPackages.hslogger))
        (hsPkgs.buildPackages.split or (pkgs.buildPackages.split))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process))
        (hsPkgs.buildPackages.unix-compat or (pkgs.buildPackages.unix-compat))
        (hsPkgs.buildPackages.unix or (pkgs.buildPackages.unix))
        (hsPkgs.buildPackages.exceptions or (pkgs.buildPackages.exceptions))
        (hsPkgs.buildPackages.bytestring or (pkgs.buildPackages.bytestring))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath))
        (hsPkgs.buildPackages.IfElse or (pkgs.buildPackages.IfElse))
        (hsPkgs.buildPackages.mtl or (pkgs.buildPackages.mtl))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        ];
      };
    components = {
      exes = {
        "github-backup" = {
          depends = ([
            (hsPkgs.base)
            (hsPkgs.github)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.exceptions)
            (hsPkgs.transformers)
            (hsPkgs.bytestring)
            (hsPkgs.vector)
            (hsPkgs.hslogger)
            (hsPkgs.split)
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.unix-compat)
            (hsPkgs.IfElse)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.utf8-string)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pretty-show)
            ] ++ (if !system.isWindows
            then [ (hsPkgs.unix) ]
            else [ (hsPkgs.Win32) (hsPkgs.setenv) ])) ++ (if flags.network-uri
            then [ (hsPkgs.network-uri) (hsPkgs.network) ]
            else [ (hsPkgs.network) (hsPkgs.network) ]);
          };
        "gitriddance" = {
          depends = ([
            (hsPkgs.base)
            (hsPkgs.github)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.exceptions)
            (hsPkgs.transformers)
            (hsPkgs.bytestring)
            (hsPkgs.vector)
            (hsPkgs.hslogger)
            (hsPkgs.split)
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.unix-compat)
            (hsPkgs.IfElse)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.utf8-string)
            ] ++ (if !system.isWindows
            then [ (hsPkgs.unix) ]
            else [ (hsPkgs.Win32) (hsPkgs.setenv) ])) ++ (if flags.network-uri
            then [ (hsPkgs.network-uri) (hsPkgs.network) ]
            else [ (hsPkgs.network) (hsPkgs.network) ]);
          };
        };
      };
    }