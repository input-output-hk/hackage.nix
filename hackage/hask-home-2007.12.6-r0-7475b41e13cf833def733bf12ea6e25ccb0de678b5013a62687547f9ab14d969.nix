{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hask-home";
        version = "2007.12.6";
      };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert 2006";
      maintainer = "bjorn@bringert.net";
      author = "Bjorn Bringert";
      homepage = "http://www.cs.chalmers.se/~bringert/darcs/hask-home/doc/";
      url = "";
      synopsis = "Generate homepages for cabal packages";
      description = "This program generates simple homepages for cabalized\nHaskell packages.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hask-home" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.regex-compat)
            (hsPkgs.network)
            (hsPkgs.hmarkup)
            (hsPkgs.xhtml)
          ] ++ (if flags.split-base
            then [
              (hsPkgs.base)
              (hsPkgs.process)
              (hsPkgs.directory)
            ]
            else [ (hsPkgs.base) ]);
        };
        "hask-home-upload" = {
          depends  = if flags.split-base
            then [
              (hsPkgs.base)
              (hsPkgs.process)
            ]
            else [ (hsPkgs.base) ];
        };
      };
    };
  }