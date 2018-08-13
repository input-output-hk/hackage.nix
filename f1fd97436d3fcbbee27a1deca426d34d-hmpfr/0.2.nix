{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hmpfr";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Aleš Bizjak <ales.bizjak0@gmail.com>";
      author = "Aleš Bizjak";
      homepage = "http://code.haskell.org/hmpfr/";
      url = "";
      synopsis = "Haskell binding to MPFR library";
      description = "Haskell binding to MPFR library. This version is compatible\nonly with 2.4.* and will not work with previous releases\nof the MPFR library.\nSome simple examples of usage can be found in test/Demo.hs.";
      buildType = "Simple";
    };
    components = {
      "hmpfr" = {
        depends  = [
          (hsPkgs.base)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.10") (hsPkgs.integer);
        libs = [ (pkgs.mpfr) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }