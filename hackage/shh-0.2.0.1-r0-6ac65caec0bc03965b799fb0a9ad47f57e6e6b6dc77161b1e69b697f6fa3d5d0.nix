{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "shh"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Luke Clifton";
      maintainer = "lukec@themk.net";
      author = "Luke Clifton";
      homepage = "";
      url = "";
      synopsis = "Simple shell scripting from Haskell";
      description = "Provides a shell scripting environment for Haskell. It\nhelps you all external binaries, and allows you to\nperform many shell-like functions, such as piping\nand redirection.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.split)
          (hsPkgs.template-haskell)
          (hsPkgs.unix)
          ];
        };
      exes = {
        "shh-example" = {
          depends = [ (hsPkgs.base) (hsPkgs.async) (hsPkgs.shh) ];
          build-tools = [
            (hsPkgs.buildPackages.coreutils or (pkgs.buildPackages.coreutils))
            (hsPkgs.buildPackages.vault or (pkgs.buildPackages.vault))
            (hsPkgs.buildPackages.vim or (pkgs.buildPackages.vim))
            ];
          };
        };
      tests = {
        "shh-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.shh)
            ];
          build-tools = [
            (hsPkgs.buildPackages.perl or (pkgs.buildPackages.perl))
            (hsPkgs.buildPackages.vim or (pkgs.buildPackages.vim))
            ];
          };
        };
      };
    }