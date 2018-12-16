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
        name = "git-monitor";
        version = "1.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John Wiegley <johnw@fpcomplete.com>";
      author = "John Wiegley";
      homepage = "http://github.com/fpco/gitlib";
      url = "";
      synopsis = "Passively snapshots working tree changes efficiently.";
      description = "Passively snapshots working tree changes efficiently.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "git-monitor" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.gitlib)
            (hsPkgs.gitlib-libgit2)
            (hsPkgs.hslogger)
            (hsPkgs.old-locale)
            (hsPkgs.optparse-applicative)
            (hsPkgs.shelly)
            (hsPkgs.system-fileio)
            (hsPkgs.system-filepath)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }