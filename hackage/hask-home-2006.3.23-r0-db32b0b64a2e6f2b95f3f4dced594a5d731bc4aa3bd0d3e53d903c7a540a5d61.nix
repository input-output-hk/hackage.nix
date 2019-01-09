{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "hask-home"; version = "2006.3.23"; };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert 2006";
      maintainer = "bjorn@bringert.net";
      author = "Bjorn Bringert";
      homepage = "http://www.cs.chalmers.se/~bringert/darcs/hask-tags/doc/";
      url = "";
      synopsis = "Generate homepages for cabal packages";
      description = "This program generates simple homepages for cabalized\nHaskell packages.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "hask-home" = {
          depends = [
            (hsPkgs.haskell98)
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.xhtml)
            ];
          };
        "hask-home-upload" = {
          depends = [
            (hsPkgs.haskell98)
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.xhtml)
            ];
          };
        };
      };
    }