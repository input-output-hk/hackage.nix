{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "git-repair";
          version = "1.20131118";
        };
        license = "LicenseRef-GPL";
        copyright = "2013 Joey Hess";
        maintainer = "Joey Hess <joey@kitenet.net>";
        author = "Joey Hess";
        homepage = "http://git-reair.branchable.com/";
        url = "";
        synopsis = "repairs a damanged git repisitory";
        description = "git-repair can repair various forms of damage to git repositories.";
        buildType = "Custom";
      };
      components = {
        exes = {
          git-repair = {
            depends  = [
              hsPkgs.MissingH
              hsPkgs.hslogger
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.extensible-exceptions
              hsPkgs.unix-compat
              hsPkgs.bytestring
              hsPkgs.base
              hsPkgs.base
              hsPkgs.IfElse
              hsPkgs.pretty-show
              hsPkgs.text
              hsPkgs.process
              hsPkgs.utf8-string
              hsPkgs.async
            ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
          };
        };
      };
    }