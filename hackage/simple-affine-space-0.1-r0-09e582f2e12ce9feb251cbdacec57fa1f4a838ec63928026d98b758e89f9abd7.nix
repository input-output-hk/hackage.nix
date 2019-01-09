{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test-hlint = true; test-doc-coverage = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "simple-affine-space"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ivan Perez (ivan.perez@keera.co.uk)";
      author = "Henrik Nilsson, Antony Courtney";
      homepage = "http://www.haskell.org/haskellwiki/Yampa";
      url = "";
      synopsis = "A simple library for affine and vector spaces.";
      description = "Affine spaces and vector spaces with a few basic instances.\n\nThis library implements affine spaces and vector spaces. Two instances are\nprovided for affine spaces (points) and two more for vector spaces (vectors).\nThese definitions are strict, implement deepseq, and are designed to have\nminimal memory overhead.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.deepseq) ]; };
      tests = {
        "hlint" = {
          depends = (pkgs.lib).optionals (!(!flags.test-hlint)) [
            (hsPkgs.base)
            (hsPkgs.hlint)
            ];
          };
        "haddock-coverage" = {
          depends = (pkgs.lib).optionals (!(!flags.test-doc-coverage)) [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.regex-posix)
            ];
          };
        };
      };
    }