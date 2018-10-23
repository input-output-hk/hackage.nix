{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "gitlib-cross";
        version = "3.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "johnw@newartisans.com";
      author = "John Wiegley";
      homepage = "";
      url = "";
      synopsis = "Run tests between repositories";
      description = "Test runner which runs tests between repositories.";
      buildType = "Simple";
    };
    components = {
      "gitlib-cross" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "smoke" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gitlib)
            (hsPkgs.gitlib-test)
            (hsPkgs.gitlib-libgit2)
            (hsPkgs.gitlib-cmdline)
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
          ];
        };
      };
    };
  }