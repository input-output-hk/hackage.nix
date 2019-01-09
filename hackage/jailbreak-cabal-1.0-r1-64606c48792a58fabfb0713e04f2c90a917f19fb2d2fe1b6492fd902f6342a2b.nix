{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "jailbreak-cabal"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons <simons@cryp.to>";
      homepage = "http://github.com/peti/jailbreak-cabal";
      url = "";
      synopsis = "Strip version restrictions from build dependencies in Cabal files.";
      description = "Strip version restrictions from build dependencies in Cabal files.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "jailbreak-cabal" = { depends = [ (hsPkgs.base) (hsPkgs.Cabal) ]; };
        };
      };
    }