{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      s3 = true;
      inotify = true;
      dbus = true;
      assistant = true;
      webapp = true;
      pairing = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "git-annex";
        version = "3.20121009";
      };
      license = "LicenseRef-GPL";
      copyright = "2010-2012 Joey Hess";
      maintainer = "Joey Hess <joey@kitenet.net>";
      author = "Joey Hess";
      homepage = "http://git-annex.branchable.com/";
      url = "";
      synopsis = "manage files with git, without checking their contents into git";
      description = "git-annex allows managing files with git, without checking the file\ncontents into git. While that may seem paradoxical, it is useful when\ndealing with files larger than git can currently easily handle, whether due\nto limitations in memory, time, or disk space.\n\nEven without file content tracking, being able to manage files with git,\nmove files around and delete files with versioned directory trees, and use\nbranches and distributed clones, are all very handy reasons to use git. And\nannexed files can co-exist in the same git repository with regularly\nversioned files, which is convenient for maintaining documents, Makefiles,\netc that are associated with annexed files but that benefit from full\nrevision control.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "git-annex" = {
          depends  = ((((([
            (hsPkgs.MissingH)
            (hsPkgs.hslogger)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.unix)
            (hsPkgs.containers)
            (hsPkgs.utf8-string)
            (hsPkgs.network)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.old-locale)
            (hsPkgs.time)
            (hsPkgs.pcre-light)
            (hsPkgs.extensible-exceptions)
            (hsPkgs.dataenc)
            (hsPkgs.SHA)
            (hsPkgs.process)
            (hsPkgs.json)
            (hsPkgs.HTTP)
            (hsPkgs.base)
            (hsPkgs.monad-control)
            (hsPkgs.transformers-base)
            (hsPkgs.lifted-base)
            (hsPkgs.IfElse)
            (hsPkgs.text)
            (hsPkgs.QuickCheck)
            (hsPkgs.bloomfilter)
            (hsPkgs.edit-distance)
            (hsPkgs.process)
          ] ++ pkgs.lib.optional (flags.s3) (hsPkgs.hS3)) ++ pkgs.lib.optional (flags.assistant) (hsPkgs.stm)) ++ pkgs.lib.optional (system.isLinux && flags.inotify) (hsPkgs.hinotify)) ++ pkgs.lib.optional (system.isLinux && flags.dbus) (hsPkgs.dbus)) ++ pkgs.lib.optionals (flags.webapp && flags.assistant) [
            (hsPkgs.yesod)
            (hsPkgs.yesod-static)
            (hsPkgs.case-insensitive)
            (hsPkgs.http-types)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.wai-logger)
            (hsPkgs.warp)
            (hsPkgs.blaze-builder)
            (hsPkgs.blaze-html)
            (hsPkgs.crypto-api)
            (hsPkgs.hamlet)
            (hsPkgs.clientsession)
            (hsPkgs.template-haskell)
            (hsPkgs.yesod-default)
            (hsPkgs.data-default)
          ]) ++ pkgs.lib.optionals (flags.pairing && flags.webapp) [
            (hsPkgs.network-multicast)
            (hsPkgs.network-info)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.testpack)
            (hsPkgs.HUnit)
            (hsPkgs.MissingH)
            (hsPkgs.hslogger)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.unix)
            (hsPkgs.containers)
            (hsPkgs.utf8-string)
            (hsPkgs.network)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.old-locale)
            (hsPkgs.time)
            (hsPkgs.pcre-light)
            (hsPkgs.extensible-exceptions)
            (hsPkgs.dataenc)
            (hsPkgs.SHA)
            (hsPkgs.process)
            (hsPkgs.json)
            (hsPkgs.HTTP)
            (hsPkgs.base)
            (hsPkgs.monad-control)
            (hsPkgs.transformers-base)
            (hsPkgs.lifted-base)
            (hsPkgs.IfElse)
            (hsPkgs.text)
            (hsPkgs.QuickCheck)
            (hsPkgs.bloomfilter)
            (hsPkgs.edit-distance)
            (hsPkgs.process)
          ];
        };
      };
    };
  }