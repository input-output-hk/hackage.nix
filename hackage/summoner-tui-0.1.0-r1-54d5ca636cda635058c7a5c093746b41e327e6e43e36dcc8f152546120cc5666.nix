{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "summoner-tui"; version = "0.1.0"; };
      license = "MPL-2.0";
      copyright = "2018-2019 Kowainik";
      maintainer = "Kowainik <xrom.xkov@gmail.com>";
      author = "Veronika Romashkina, Dmitrii Kovanikov";
      homepage = "https://github.com/kowainik/summoner";
      url = "";
      synopsis = "Tool for scaffolding fully configured batteries-included production-level Haskell projects using TUI.";
      description = "Tool for scaffolding fully configured batteries-included production-level Haskell projects using TUI.\nSee [README.md](https://github.com/kowainik/summoner#-summoner) for details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base-noprelude)
          (hsPkgs.brick)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.microlens)
          (hsPkgs.microlens-th)
          (hsPkgs.relude)
          (hsPkgs.summoner)
          (hsPkgs.text)
          (hsPkgs.vty)
          ];
        };
      exes = {
        "summon-tui" = { depends = [ (hsPkgs.base) (hsPkgs.summoner-tui) ]; };
        };
      };
    }