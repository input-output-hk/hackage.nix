{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      use-integer-simple = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hmpfr";
        version = "0.3.3.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michal Konečný <mikkonecny@gmail.com>";
      author = "Aleš Bizjak, Michal Konečný";
      homepage = "http://code.google.com/p/hmpfr/";
      url = "";
      synopsis = "Haskell binding to the MPFR library";
      description = "Haskell binding to the MPFR library. This version is compatible\nwith MPFR 2.4.* and later and will not work with previous releases\nof the MPFR library.\n\n/Since MPFR uses GMP, this library features infrequent but serious errors/\n/with a ghc that has been compiled with the default integer-gmp./\n/When using ghc, it is recommended to use one compiled with a modified integer-gmp,/\n/as described at/\n\n<http://code.google.com/p/hmpfr/wiki/GHCWithRenamedGMP>\n\n/or/\n/with integer-simple, as described at/\n\n<http://code.google.com/p/hmpfr/wiki/GHCWithoutGMP>\n\n/There is a hope that at some point future versions of ghc will not need any modification for/\n/hmpfr to work with them correctly./\n\nThe library includes both a pure and a mutable interface.\nThe mutable interface should have a lot less overhead\nthan the pure one.\n\nSome simple examples of usage can be found in demo/Demo.hs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
        ] ++ (if flags.use-integer-simple
          then [ (hsPkgs.integer-simple) ]
          else [ (hsPkgs.integer-gmp) ]);
        libs = [ (pkgs."mpfr") ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }