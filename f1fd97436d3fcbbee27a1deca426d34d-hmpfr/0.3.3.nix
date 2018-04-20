{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      use-integer-simple = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hmpfr";
          version = "0.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michal Konečný <mikkonecny@gmail.com>";
        author = "Aleš Bizjak, Michal Konečný";
        homepage = "http://code.google.com/p/hmpfr/";
        url = "";
        synopsis = "Haskell binding to the MPFR library";
        description = "Haskell binding to the MPFR library. This version is compatible\nwith MPFR 2.4.* and later and will not work with previous releases\nof the MPFR library.\n\n/Since MPFR uses GMP, this library features infrequent but serious errors/\n/with a ghc (at least <= 7.2.1) that has been compiled with integer-gmp./\n/When using ghc, it is recommended to use one compiled with integer-simple./\n\nThe library includes both a pure and a mutable interface.\nThe mutable interface should have a lot less overhead\nthan the pure one.\n\nSome simple examples of usage can be found in demo/Demo.hs.";
        buildType = "Simple";
      };
      components = {
        hmpfr = {
          depends  = [
            hsPkgs.base
          ] ++ (if _flags.use-integer-simple
            then [ hsPkgs.integer-simple ]
            else [ hsPkgs.integer-gmp ]);
          libs = [ pkgs.mpfr ];
        };
      };
    }