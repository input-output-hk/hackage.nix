{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "summoner"; version = "1.3.0.1"; };
      license = "MPL-2.0";
      copyright = "2018-2019 Kowainik";
      maintainer = "xrom.xkov@gmail.com";
      author = "Kowainik";
      homepage = "https://github.com/kowainik/summoner";
      url = "";
      synopsis = "Tool for scaffolding fully configured batteries-included production-level Haskell projects.";
      description = "Tool for scaffolding fully configured batteries-included production-level Haskell projects.\nSee [README.md](https://github.com/kowainik/summoner#-summoner) for details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base-noprelude)
          (hsPkgs.aeson)
          (hsPkgs.ansi-terminal)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.generic-deriving)
          (hsPkgs.gitrev)
          (hsPkgs.neat-interpolation)
          (hsPkgs.optparse-applicative)
          (hsPkgs.process)
          (hsPkgs.relude)
          (hsPkgs.shellmet)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.tomland)
          ];
        };
      exes = { "summon" = { depends = [ (hsPkgs.base) (hsPkgs.summoner) ]; }; };
      tests = {
        "summoner-test" = {
          depends = [
            (hsPkgs.base-noprelude)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.neat-interpolation)
            (hsPkgs.relude)
            (hsPkgs.tomland)
            (hsPkgs.tree-diff)
            (hsPkgs.summoner)
            ];
          };
        };
      };
    }