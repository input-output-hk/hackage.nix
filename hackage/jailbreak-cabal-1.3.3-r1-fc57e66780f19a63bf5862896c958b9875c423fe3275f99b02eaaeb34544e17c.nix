{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "jailbreak-cabal"; version = "1.3.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "simons@cryp.to";
      author = "Peter Simons, Joel Taylor, Nikolay Amiantov, aszlig";
      homepage = "https://github.com/peti/jailbreak-cabal#readme";
      url = "";
      synopsis = "Strip version restrictions from Cabal files";
      description = "Strip version restrictions from build dependencies in Cabal files.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "jailbreak-cabal" = { depends = [ (hsPkgs.base) (hsPkgs.Cabal) ]; };
        };
      };
    }