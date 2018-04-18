{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      testprog = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "nsis";
          version = "0.1.2";
        };
        license = "LicenseRef-GPL";
        copyright = "Neil Mitchell 2012";
        maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
        author = "Neil Mitchell <ndmitchell@gmail.com>";
        homepage = "http://community.haskell.org/~ndm/nsis/";
        url = "";
        synopsis = "DSL for producing Windows Installer using NSIS.";
        description = "NSIS (Nullsoft Scriptable Install System, <http://nsis.sourceforge.net/>) is a tool that allows programmers\nto create installers for Windows.\nThis library provides an alternative syntax for NSIS scripts, as an embedded Haskell language, removing much\nof the hard work in developing an install script. Simple NSIS installers should look mostly the same, complex ones should\nbe significantly more maintainable.";
        buildType = "Simple";
      };
      components = {
        nsis = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.uniplate
          ];
        };
        exes = {
          nsis = {
            depends  = [ hsPkgs.process ];
          };
        };
      };
    }