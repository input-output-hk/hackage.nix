{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "shh"; version = "0.7.0.2"; };
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
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.split)
          (hsPkgs.stringsearch)
          (hsPkgs.template-haskell)
          (hsPkgs.containers)
          (hsPkgs.unix)
          (hsPkgs.utf8-string)
          ];
        };
      exes = {
        "shh" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.temporary)
            (hsPkgs.bytestring)
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
            (hsPkgs.markdown-unlit)
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.shh)
            (hsPkgs.utf8-string)
            ];
          };
        };
      };
    }