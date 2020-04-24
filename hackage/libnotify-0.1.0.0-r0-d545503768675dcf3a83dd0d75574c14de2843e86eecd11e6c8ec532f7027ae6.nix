{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "libnotify"; version = "0.1.0.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          ];
        libs = [
          (pkgs."notify" or ((hsPkgs.pkgs-errors).sysDepError "notify"))
          ];
        buildable = true;
        };
      };
    }