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
      specVersion = "1.8";
      identifier = {
        name = "pushme";
        version = "1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John Wiegley <johnw@newartisans.com>";
      author = "John Wiegley";
      homepage = "https://github.com/jwiegley/pushme";
      url = "";
      synopsis = "Tool to synchronize multiple directories with rsync, zfs or git-annex";
      description = "Script I use for synchronizing my data among machines.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "pushme" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.cabal-file-th)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.hslogger)
            (hsPkgs.io-storage)
            (hsPkgs.lens)
            (hsPkgs.old-locale)
            (hsPkgs.parallel-io)
            (hsPkgs.pointless-fun)
            (hsPkgs.regex-posix)
            (hsPkgs.shelly)
            (hsPkgs.stringable)
            (hsPkgs.system-fileio)
            (hsPkgs.system-filepath)
            (hsPkgs.text)
            (hsPkgs.text-format)
            (hsPkgs.time)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            (hsPkgs.yaml)
          ];
        };
      };
    };
  }