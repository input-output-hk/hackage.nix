{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "shh"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018, 2019 Luke Clifton";
      maintainer = "lukec@themk.net";
      author = "Luke Clifton";
      homepage = "";
      url = "";
      synopsis = "Simple shell scripting from Haskell";
      description = "Provides a shell scripting environment for Haskell. It\nhelps you use external binaries, and allows you to\nperform many shell-like functions, such as piping\nand redirection.";
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
          (hsPkgs.containers)
          (hsPkgs.unix)
          ];
        };
      exes = {
        "shh" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.temporary)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.shh)
            (hsPkgs.unix)
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
            (hsPkgs.async)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.shh)
            ];
          };
        };
      };
    }