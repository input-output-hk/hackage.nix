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
      specVersion = "0";
      identifier = {
        name = "himerge";
        version = "0.17.9";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "araujo@gentoo.org";
      author = "Luis Francisco Araujo";
      homepage = "";
      url = "";
      synopsis = "Haskell Graphical User Interface for Emerge";
      description = "Himerge is a graphical user interface for emerge (Gentoo's Portage system)\nwritten in Haskell using gtk2hs.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "himerge" = {
          depends = [
            (hsPkgs.haskell98)
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.old-time)
            (hsPkgs.parallel)
            (hsPkgs.gtk)
            (hsPkgs.mozembed)
            (hsPkgs.glib)
          ];
        };
      };
    };
  }