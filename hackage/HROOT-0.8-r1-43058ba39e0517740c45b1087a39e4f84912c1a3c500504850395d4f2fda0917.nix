{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "HROOT";
        version = "0.8";
      };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim";
      homepage = "http://ianwookim.org/HROOT";
      url = "";
      synopsis = "Haskell binding to ROOT RooFit modules";
      description = "HROOT is a haskell Foreign Function Interface (FFI) binding to ROOT. ROOT(http://root.cern.ch) is an object-oriented program and library developed by CERN for physics data analysis.";
      buildType = "Custom";
    };
    components = {
      "HROOT" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.fficxx-runtime)
          (hsPkgs.HROOT-core)
          (hsPkgs.HROOT-graf)
          (hsPkgs.HROOT-hist)
          (hsPkgs.HROOT-math)
          (hsPkgs.HROOT-io)
        ];
        libs = [ (pkgs."stdc++") ];
      };
    };
  }