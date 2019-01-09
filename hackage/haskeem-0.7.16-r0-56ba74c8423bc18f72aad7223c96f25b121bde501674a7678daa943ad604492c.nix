{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "haskeem"; version = "0.7.16"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Uwe Hollerbach <uh@alumni.caltech.edu>";
      author = "Uwe Hollerbach <uh@alumni.caltech.edu>";
      homepage = "http://www.korgwal.com/haskeem/";
      url = "";
      synopsis = "A small scheme interpreter";
      description = "This is a moderately complete small scheme interpreter.\nIt implements most of R6RS, with the exception of call/cc.\nIt is however starting to have a set of delimited\ncontinuations, reset/shift et al. It has a macro system,\nalthough not R6RS hygienic macros. It is also not\nnecessarily fully tail-recursive; so it's not\nindustrial-strength. For playing with or learning scheme,\nit should be pretty good.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "haskeem" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.haskell98)
            (hsPkgs.random)
            (hsPkgs.old-time)
            (hsPkgs.unix)
            (hsPkgs.directory)
            (hsPkgs.haskeline)
            ];
          };
        };
      };
    }