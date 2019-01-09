{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = { name = "cabal-cargs"; version = "0.9.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniel.trstenjak@gmail.com";
      author = "Daniel Trstenjak";
      homepage = "";
      url = "";
      synopsis = "A command line program for extracting compiler arguments from a cabal file.";
      description = "For further details please consult the <https://github.com/dan-t/cabal-cargs README>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.cmdargs)
          (hsPkgs.lens)
          (hsPkgs.directory)
          (hsPkgs.transformers)
          (hsPkgs.either)
          (hsPkgs.text)
          (hsPkgs.system-filepath)
          (hsPkgs.system-fileio)
          (hsPkgs.unordered-containers)
          (hsPkgs.cabal-lenses)
          (hsPkgs.Cabal)
          (hsPkgs.bytestring)
          ];
        };
      exes = {
        "cabal-cargs" = { depends = [ (hsPkgs.base) (hsPkgs.cabal-cargs) ]; };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.filepath)
            (hsPkgs.cabal-cargs)
            ];
          };
        };
      };
    }