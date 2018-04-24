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
          version = "0.4.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michal Konečný <mikkonecny@gmail.com>";
        author = "Aleš Bizjak, Michal Konečný";
        homepage = "https://github.com/michalkonecny/hmpfr";
        url = "";
        synopsis = "Haskell binding to the MPFR library";
        description = "Haskell binding to the MPFR library.\n\nThe library includes both a pure and a mutable interface.\nThe mutable interface should have a lot less overhead\nthan the pure one.\n\nSome simple examples of usage can be found in demo/Demo.hs.";
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
          build-tools = [ hsPkgs.hsc2hs ];
        };
      };
    }