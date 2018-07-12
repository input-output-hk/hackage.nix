{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hmpfr";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Aleš Bizjak <ales.bizjak0@gmail.com>";
        author = "Aleš Bizjak";
        homepage = "http://code.haskell.org/hmpfr/";
        url = "";
        synopsis = "Haskell binding to MPFR library";
        description = "Haskell binding to MPFR library. Tested with 2.3.2.\nSome simple examples of usage can be found in test/Demo.hs.";
        buildType = "Simple";
      };
      components = {
        "hmpfr" = {
          depends  = [
            hsPkgs.base
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.10") hsPkgs.integer;
          libs = [ pkgs.mpfr ];
          build-tools = [
            hsPkgs.buildPackages.hsc2hs
          ];
        };
      };
    }