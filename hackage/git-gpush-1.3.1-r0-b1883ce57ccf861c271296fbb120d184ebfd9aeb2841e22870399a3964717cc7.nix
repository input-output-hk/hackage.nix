{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "git-gpush"; version = "1.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John Wiegley <johnw@fpcomplete.com>";
      author = "John Wiegley";
      homepage = "git://github.com/fpco/gitlib";
      url = "";
      synopsis = "More intelligent push-to-GitHub utility.";
      description = "More intelligent push-to-GitHub utility.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "git-gpush" = {
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
            (hsPkgs.tagged)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }