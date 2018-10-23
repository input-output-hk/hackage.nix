{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2.2";
      identifier = {
        name = "miconix-test";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "miak.enina@gmail.com";
      author = "laypod Une";
      homepage = "";
      url = "";
      synopsis = "a.";
      description = "aaw.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "test1" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }