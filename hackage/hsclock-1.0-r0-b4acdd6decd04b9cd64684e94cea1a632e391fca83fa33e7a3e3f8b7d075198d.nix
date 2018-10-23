{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hsclock";
        version = "1.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "dons@galois.com";
      author = "Duncan Coutts <duncan.coutts@worc.ox.ac.uk>";
      homepage = "http://haskell.org/gtk2hs/archives/2006/01/26/cairo-eye-candy/";
      url = "";
      synopsis = "An elegant analog clock using Haskell, GTK and Cairo";
      description = "An elegant analog clock using Haskell, GTK and Cairo";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hsclock" = {
          depends  = [
            (hsPkgs.cairo)
            (hsPkgs.gtk)
            (hsPkgs.glib)
          ] ++ (if flags.small_base
            then [
              (hsPkgs.base)
              (hsPkgs.old-time)
            ]
            else [ (hsPkgs.base) ]);
        };
      };
    };
  }