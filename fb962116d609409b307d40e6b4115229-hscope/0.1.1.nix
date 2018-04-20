{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hscope";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Boris Sukholitko <boriss@gmail.com>";
        maintainer = "Boris Sukholitko <boriss@gmail.com>";
        author = "Boris Sukholitko <boriss@gmail.com>";
        homepage = "https://github.com/bosu/hscope";
        url = "";
        synopsis = "cscope like browser for Haskell code";
        description = "hscope is a partial cscope line oriented mode reimplementation for Haskell code.\nCurrently it supports finding the definition and callers of the function, types.\nAlso works searching for files and in files.\nSee hscope --help for available options.\nBeing cscope-compatible gives Vim integration for free. Use :set cscopeprg\nto configure hscope as cscope replacement for haskell files.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hscope = {
            depends  = [
              hsPkgs.base
              hsPkgs.hs-cdb
              hsPkgs.haskell-src-exts
              hsPkgs.mtl
              hsPkgs.uniplate
              hsPkgs.cereal
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.process
              hsPkgs.directory
            ];
          };
        };
        tests = {
          Build = {
            depends  = [
              hsPkgs.base
              hsPkgs.test-simple
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.Unixutils
              hsPkgs.mtl
            ];
          };
        };
      };
    }