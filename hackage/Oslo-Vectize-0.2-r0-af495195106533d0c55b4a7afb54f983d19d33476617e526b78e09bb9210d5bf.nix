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
      synopsis = "Tests for the Blunk sequencer library.";
      description = "Tests for the Blunk sequencer library.\n\n<<https://i.imgur.com/y6Dt9ou.gif>>\n\n<https://t.co/IzpPbQnMgO OSLO VECTIZE>\n";
      buildType = "Simple";
      };
    components = { exes = { "test1" = { depends = [ (hsPkgs.base) ]; }; }; };
    }