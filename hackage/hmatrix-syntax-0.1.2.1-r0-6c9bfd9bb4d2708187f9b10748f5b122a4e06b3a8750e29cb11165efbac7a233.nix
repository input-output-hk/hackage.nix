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
        name = "hmatrix-syntax";
        version = "0.1.2.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "reiner.pope@gmail.com";
      author = "Reiner Pope";
      homepage = "http://github.com/reinerp/hmatrix-syntax";
      url = "";
      synopsis = "MATLAB-like syntax for hmatrix vectors and matrices";
      description = "This package uses QuasiQuotes to provide a nice syntax for hmatrix\nvectors and matrices. To get started, see \"Data.Packed.Syntax\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.hmatrix)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }