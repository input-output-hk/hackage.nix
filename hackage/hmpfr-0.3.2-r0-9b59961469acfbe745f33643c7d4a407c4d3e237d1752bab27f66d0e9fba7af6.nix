{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hmpfr"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michal Konečný <mikkonecny@gmail.com>";
      author = "Aleš Bizjak, Michal Konečný";
      homepage = "http://code.google.com/p/hmpfr/";
      url = "";
      synopsis = "Haskell binding to the MPFR library";
      description = "Haskell binding to the MPFR library. This version is compatible\nwith MPFR 2.4.* and later and will not work with previous releases\nof the MPFR library.\n\n/Since MPFR uses GMP, this library does not work correctly/\n/with a ghc that has been compiled with integer-gmp./\n/When using ghc, this library will require that the ghc/\n/is compiled  with integer-simple./\n\nThe library includes a mutable interface\nin addition to the pure one. These functions should have a\nlot less overhead than the pure ones.\n\nSome simple examples of usage can be found in demo/Demo.hs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          ] ++ (pkgs.lib).optional (compiler.isGhc && true) (hsPkgs.integer-simple);
        libs = [ (pkgs."mpfr") ];
        build-tools = [ ((hsPkgs.buildPackages).hsc2hs) ];
        };
      };
    }