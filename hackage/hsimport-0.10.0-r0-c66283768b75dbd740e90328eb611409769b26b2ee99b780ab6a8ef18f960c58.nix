{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "hsimport"; version = "0.10.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniel.trstenjak@gmail.com";
      author = "Daniel Trstenjak";
      homepage = "";
      url = "";
      synopsis = "Extend the import list of a Haskell source file";
      description = "A command line program for extending the import list of a Haskell source file.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.cmdargs)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.ilist)
          (hsPkgs.microlens)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.split)
          (hsPkgs.attoparsec)
          (hsPkgs.directory)
          (hsPkgs.dyre)
          ];
        };
      sublibs = {
        "library-internal" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.ilist)
            (hsPkgs.microlens)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.split)
            (hsPkgs.attoparsec)
            (hsPkgs.directory)
            (hsPkgs.dyre)
            ];
          };
        };
      exes = {
        "hsimport" = { depends = [ (hsPkgs.base) (hsPkgs.hsimport) ]; };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.filepath)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.library-internal)
            ];
          };
        };
      };
    }