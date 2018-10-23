{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "libnotify";
        version = "0.2.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Matvey Aksenov <matvey.aksenov@gmail.com>";
      author = "Emon Tsukimiya, Matvey Aksenov";
      homepage = "";
      url = "";
      synopsis = "Bindings to libnotify library";
      description = "The package provides a high level interface to libnotify API (see \"Libnotify\")\n\n\"Libnotify.C.Notify\" and \"Libnotify.C.NotifyNotification\" modules contain\nbindings to C-level functions if you're into that";
      buildType = "Simple";
    };
    components = {
      "libnotify" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.glib)
          (hsPkgs.gtk)
        ];
        libs = [ (pkgs."notify") ];
      };
    };
  }