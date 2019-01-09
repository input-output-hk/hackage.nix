{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "HROOT"; version = "0.9"; };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim";
      homepage = "http://ianwookim.org/HROOT";
      url = "";
      synopsis = "Haskell binding to the ROOT data analysis framework";
      description = "HROOT is a haskell Foreign Function Interface (FFI) binding to ROOT. ROOT(http://root.cern.ch) is an object-oriented program and library developed by CERN for physics data analysis.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.fficxx)
          (hsPkgs.fficxx-runtime)
          (hsPkgs.template-haskell)
          (hsPkgs.HROOT-core)
          (hsPkgs.HROOT-hist)
          (hsPkgs.HROOT-math)
          (hsPkgs.HROOT-tree)
          (hsPkgs.HROOT-graf)
          (hsPkgs.HROOT-io)
          ];
        libs = [ (pkgs."stdc++") ];
        };
      };
    }