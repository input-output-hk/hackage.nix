{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      network-uri = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "github-backup";
          version = "1.20150617";
        };
        license = "GPL-3.0-only";
        copyright = "2012 Joey Hess";
        maintainer = "Joey Hess <joey@kitenet.net>";
        author = "Joey Hess";
        homepage = "https://github.com/joeyh/github-backup";
        url = "";
        synopsis = "backs up everything github knows about a repository, to the repository";
        description = "github-backup is a simple tool you run in a git repository you cloned from\nGithub. It backs up everything Github knows about the repository, including\nother forks, issues, comments, milestones, pull requests, and watchers.\nAlso includes gitriddance, which can be used to close all open issues and\npull requests.";
        buildType = "Custom";
      };
      components = {
        exes = {
          "github-backup" = {
            depends  = ([
              hsPkgs.MissingH
              hsPkgs.hslogger
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.exceptions
              hsPkgs.transformers
              hsPkgs.unix-compat
              hsPkgs.bytestring
              hsPkgs.IfElse
              hsPkgs.pretty-show
              hsPkgs.text
              hsPkgs.process
              hsPkgs.optparse-applicative
              hsPkgs.github
              hsPkgs.base
              hsPkgs.base
            ] ++ (if !system.isWindows
              then [ hsPkgs.unix ]
              else [
                hsPkgs.Win32
                hsPkgs.setenv
                hsPkgs.utf8-string
              ])) ++ (if _flags.network-uri
              then [
                hsPkgs.network-uri
                hsPkgs.network
              ]
              else [
                hsPkgs.network
                hsPkgs.network
              ]);
          };
          "gitriddance" = {
            depends  = ([
              hsPkgs.github
              hsPkgs.base
              hsPkgs.base
              hsPkgs.text
              hsPkgs.filepath
              hsPkgs.MissingH
              hsPkgs.exceptions
              hsPkgs.transformers
              hsPkgs.bytestring
              hsPkgs.hslogger
              hsPkgs.process
              hsPkgs.containers
              hsPkgs.unix-compat
              hsPkgs.IfElse
              hsPkgs.directory
              hsPkgs.mtl
            ] ++ (if !system.isWindows
              then [ hsPkgs.unix ]
              else [
                hsPkgs.Win32
                hsPkgs.setenv
                hsPkgs.utf8-string
              ])) ++ (if _flags.network-uri
              then [
                hsPkgs.network-uri
                hsPkgs.network
              ]
              else [
                hsPkgs.network
                hsPkgs.network
              ]);
          };
        };
      };
    }