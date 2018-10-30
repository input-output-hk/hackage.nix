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
        name = "gitlib-cmdline";
        version = "1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "johnw@fpcomplete.com";
      author = "John Wiegley";
      homepage = "";
      url = "";
      synopsis = "Gitlib repository backend that uses the git command-line tool.";
      description = "Gitlib repository backend that uses the git command-line tool.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.gitlib)
          (hsPkgs.gitlib-utils)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.failure)
          (hsPkgs.monad-control)
          (hsPkgs.old-locale)
          (hsPkgs.parsec)
          (hsPkgs.process-extras)
          (hsPkgs.shelly)
          (hsPkgs.system-fileio)
          (hsPkgs.system-filepath)
          (hsPkgs.tagged)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "smoke" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gitlib)
            (hsPkgs.gitlib-utils)
            (hsPkgs.gitlib-test)
            (hsPkgs.gitlib-cmdline)
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.system-filepath)
            (hsPkgs.tagged)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }