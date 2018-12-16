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
        version = "2.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John Wiegley <johnw@newartisans.com>";
      author = "John Wiegley";
      homepage = "https://github.com/jwiegley/pushme";
      url = "";
      synopsis = "Tool to synchronize directories with rsync, zfs or git-annex";
      description = "Script I use for synchronizing my data among machines.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "pushme" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.pipes)
            (hsPkgs.pipes-group)
            (hsPkgs.pipes-safe)
            (hsPkgs.pipes-text)
            (hsPkgs.foldl)
            (hsPkgs.containers)
            (hsPkgs.io-storage)
            (hsPkgs.lens)
            (hsPkgs.logging)
            (hsPkgs.monad-logger)
            (hsPkgs.old-locale)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parallel-io)
            (hsPkgs.regex-posix)
            (hsPkgs.safe)
            (hsPkgs.shelly)
            (hsPkgs.system-fileio)
            (hsPkgs.system-filepath)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.text-format)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            (hsPkgs.yaml)
          ];
        };
      };
    };
  }