{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "HROOT"; version = "0.6.7"; };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim";
      homepage = "http://ianwookim.org/HROOT";
      url = "";
      synopsis = "Wrapper for ROOT";
      description = "Haskell FFI binding for ROOT";
      buildType = "Custom";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; libs = [ (pkgs."stdc++") ]; };
      };
    }