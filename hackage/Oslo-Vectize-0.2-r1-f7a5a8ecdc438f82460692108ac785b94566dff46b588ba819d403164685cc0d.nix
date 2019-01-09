{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.2";
      identifier = { name = "Oslo-Vectize"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "miak.enina@gmail.com";
      author = "laypod Une";
      homepage = "";
      url = "";
      synopsis = "Tests";
      description = "Tests for the Blunk sequencer library.";
      buildType = "Simple";
      };
    components = { exes = { "test1" = { depends = [ (hsPkgs.base) ]; }; }; };
    }