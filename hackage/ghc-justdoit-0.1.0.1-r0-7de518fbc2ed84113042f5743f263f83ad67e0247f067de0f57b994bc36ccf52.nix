{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ghc-justdoit"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2018 Joachim Breitner";
      maintainer = "mail@joachim-breitner.de";
      author = "Joachim Breitner";
      homepage = "https://github.com/nomeata/ghc-justdoit";
      url = "";
      synopsis = "A magic typeclass that just does it";
      description = "This plugin allows you to write\n\n@\n&#123;&#45;\\# OPTIONS_GHC -fplugin GHC.JustDoIt.Plugin \\#&#45;&#125;\nmodule Test where\n\nimport GHC.JustDoIt\n\nfoo :: ((a -> r) -> r) -> (a -> ((b -> r) -> r)) -> ((b -> r) -> r)\nfoo = (…)\n@\n\nwithout having to write the actual implementation of `foo`.\n\nSee <https://github.com/nomeata/ghc-justdoit/blob/master/examples/Demo.hs examples/Demo.hs>\nfor a few examples of what this plugin can do for you.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.hashable) (hsPkgs.ghc) ];
        };
      tests = {
        "demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ghc-justdoit)
            (hsPkgs.inspection-testing)
            ];
          };
        };
      };
    }