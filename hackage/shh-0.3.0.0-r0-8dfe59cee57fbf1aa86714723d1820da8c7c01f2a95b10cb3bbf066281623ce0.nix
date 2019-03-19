{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "shh"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018, 2019 Luke Clifton";
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
        "shh" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.hashable)
            (hsPkgs.hashable)
            (hsPkgs.temporary)
            (hsPkgs.directory)
            (hsPkgs.shh)
            (hsPkgs.split)
            ];
          };
        "shh-example" = {
          depends = [ (hsPkgs.base) (hsPkgs.async) (hsPkgs.shh) ];
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
          };
        };
      };
    }