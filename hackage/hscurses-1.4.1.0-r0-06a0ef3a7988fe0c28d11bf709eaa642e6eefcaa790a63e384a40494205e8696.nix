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
        name = "hscurses";
        version = "1.4.1.0";
      };
      license = "LicenseRef-LGPL";
      copyright = "Stefan Wehr 2004 - 2011\nDon Stewart 2004\nTuomo Valkonen 2004\nJohn Meacham 2002-2004";
      maintainer = "Stefan Wehr <http://www.stefanwehr.de>";
      author = "John Meacham <john at repetae dot net>\nTuomo Valkonen <tuomov at iki.fi>\nDon Stewart <http://www.cse.unsw.edu.au/~dons>\nStefan Wehr <http://www.stefanwehr.de>";
      homepage = "https://github.com/skogsbaer/hscurses";
      url = "";
      synopsis = "NCurses bindings for Haskell";
      description = "Binding to NCurses, a library of functions that manage an\napplication's display on character-cell terminals. Additionally,\nit contains some basic widgets such as a text input widget and\na table widget.";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.old-time)
          (hsPkgs.old-locale)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
    };
  }