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
        name = "git-gpush";
        version = "3.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John Wiegley <johnw@newartisans.com>";
      author = "John Wiegley";
      homepage = "http://github.com/jwiegley/gitlib";
      url = "";
      synopsis = "More intelligent push-to-GitHub utility.";
      description = "More intelligent push-to-GitHub utility.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "git-gpush" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gitlib)
            (hsPkgs.gitlib-cmdline)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hslogger)
            (hsPkgs.old-locale)
            (hsPkgs.optparse-applicative)
            (hsPkgs.shelly)
            (hsPkgs.tagged)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }