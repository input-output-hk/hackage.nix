{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hmpfr";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Aleš Bizjak <ales.bizjak0@gmail.com>";
        author = "Aleš Bizjak";
        homepage = "http://code.haskell.org/hmpfr/";
        url = "";
        synopsis = "Haskell binding to MPFR library";
        description = "Haskell binding to MPFR library. This version is compatible\nonly with 2.4.* and will not work with previous releases\nof the MPFR library.\n\nThis is the first release that includes a mutable interface\nin addition to the pure one. These functions should have a\nlot less overhead than the pure ones.\n\nSome simple examples of usage can be found in demo/Demo.hs.";
        buildType = "Simple";
      };
      components = {
        "hmpfr" = {
          depends  = ([
            hsPkgs.base
          ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "6.10" && (compiler.isGhc && compiler.version.lt "6.12")) [
            hsPkgs.base
            hsPkgs.integer
          ]) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.12") hsPkgs.integer-gmp;
          libs = [ pkgs.mpfr ];
          build-tools = [
            hsPkgs.buildPackages.hsc2hs
          ];
        };
      };
    }