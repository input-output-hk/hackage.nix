{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "hit-on"; version = "0.1.0.0"; };
      license = "MPL-2.0";
      copyright = "2019 Kowainik";
      maintainer = "Kowainik <xrom.xkov@gmail.com>";
      author = "Veronika Romashkina, Dmitrii Kovanikov";
      homepage = "https://github.com/kowainik/hit-on";
      url = "";
      synopsis = "Haskell Git Helper Tool";
      description = "Haskell Git Helper Tool";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base-noprelude)
          (hsPkgs.ansi-terminal)
          (hsPkgs.directory)
          (hsPkgs.github)
          (hsPkgs.gitrev)
          (hsPkgs.optparse-applicative)
          (hsPkgs.process)
          (hsPkgs.relude)
          (hsPkgs.shellmet)
          (hsPkgs.text)
          (hsPkgs.vector)
          ];
        };
      exes = { "hit" = { depends = [ (hsPkgs.base) (hsPkgs.hit-on) ]; }; };
      tests = {
        "hit-on-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.hspec)
            (hsPkgs.github)
            (hsPkgs.hit-on)
            ];
          };
        };
      };
    }