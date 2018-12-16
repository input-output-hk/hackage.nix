{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "cinvoke";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Remi Turk 2009-2011";
      maintainer = "remi.turk@gmail.com";
      author = "Remi Turk";
      homepage = "http://haskell.org/haskellwiki/Library/cinvoke";
      url = "";
      synopsis = "A binding to cinvoke.";
      description = "A binding to cinvoke, allowing C functions of types only known at runtime to be called from Haskell.\nSee \"Foreign.CInvoke\" to get started.\nThe C library used can be found at <http://www.nongnu.org/cinvoke/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
        libs = [ (pkgs."cinvoke") ];
      };
    };
  }