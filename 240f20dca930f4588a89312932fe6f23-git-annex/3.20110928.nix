{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "git-annex";
        version = "3.20110928";
      };
      license = "LicenseRef-GPL";
      copyright = "2010-2011 Joey Hess";
      maintainer = "Joey Hess <joey@kitenet.net>";
      author = "Joey Hess";
      homepage = "http://git-annex.branchable.com/";
      url = "";
      synopsis = "manage files with git, without checking their contents into git";
      description = "git-annex allows managing files with git, without checking the file\ncontents into git. While that may seem paradoxical, it is useful when\ndealing with files larger than git can currently easily handle, whether due\nto limitations in memory, checksumming time, or disk space.\n\nEven without file content tracking, being able to manage files with git,\nmove files around and delete files with versioned directory trees, and use\nbranches and distributed clones, are all very handy reasons to use git. And\nannexed files can co-exist in the same git repository with regularly\nversioned files, which is convenient for maintaining documents, Makefiles,\netc that are associated with annexed files but that benefit from full\nrevision control.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "git-annex" = {
          depends  = [
            (hsPkgs.haskell98)
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
            (hsPkgs.hS3)
            (hsPkgs.HTTP)
            (hsPkgs.base)
            (hsPkgs.monad-control)
            (hsPkgs.json)
          ];
        };
        "git-annex-shell" = {};
        "git-union-merge" = {};
      };
    };
  }