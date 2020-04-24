{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "taffybar"; version = "3.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tristan@nochair.net";
      author = "Tristan Ravitch";
      homepage = "http://github.com/taffybar/taffybar";
      url = "";
      synopsis = "A desktop bar similar to xmobar, but with more GUI";
      description = "Taffybar is a gtk+3 (through gtk2hs) based desktop information bar, intended\nprimarily for use with XMonad, though it can also function alongside other EWMH\ncompliant window managers. It is similar in spirit to xmobar, but it differs in\nthat it gives up some simplicity for a reasonable helping of eye candy.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ConfigFile" or ((hsPkgs.pkgs-errors).buildDepError "ConfigFile"))
          (hsPkgs."HStringTemplate" or ((hsPkgs.pkgs-errors).buildDepError "HStringTemplate"))
          (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."dbus" or ((hsPkgs.pkgs-errors).buildDepError "dbus"))
          (hsPkgs."dbus-hslogger" or ((hsPkgs.pkgs-errors).buildDepError "dbus-hslogger"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."dyre" or ((hsPkgs.pkgs-errors).buildDepError "dyre"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          (hsPkgs."enclosed-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "enclosed-exceptions"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."gi-cairo" or ((hsPkgs.pkgs-errors).buildDepError "gi-cairo"))
          (hsPkgs."gi-cairo-render" or ((hsPkgs.pkgs-errors).buildDepError "gi-cairo-render"))
          (hsPkgs."gi-cairo-connector" or ((hsPkgs.pkgs-errors).buildDepError "gi-cairo-connector"))
          (hsPkgs."gi-gdk" or ((hsPkgs.pkgs-errors).buildDepError "gi-gdk"))
          (hsPkgs."gi-gdkpixbuf" or ((hsPkgs.pkgs-errors).buildDepError "gi-gdkpixbuf"))
          (hsPkgs."gi-gdkx11" or ((hsPkgs.pkgs-errors).buildDepError "gi-gdkx11"))
          (hsPkgs."gi-glib" or ((hsPkgs.pkgs-errors).buildDepError "gi-glib"))
          (hsPkgs."gi-gtk" or ((hsPkgs.pkgs-errors).buildDepError "gi-gtk"))
          (hsPkgs."gi-gtk-hs" or ((hsPkgs.pkgs-errors).buildDepError "gi-gtk-hs"))
          (hsPkgs."gi-pango" or ((hsPkgs.pkgs-errors).buildDepError "gi-pango"))
          (hsPkgs."gtk-sni-tray" or ((hsPkgs.pkgs-errors).buildDepError "gtk-sni-tray"))
          (hsPkgs."gtk-strut" or ((hsPkgs.pkgs-errors).buildDepError "gtk-strut"))
          (hsPkgs."haskell-gi" or ((hsPkgs.pkgs-errors).buildDepError "haskell-gi"))
          (hsPkgs."haskell-gi-base" or ((hsPkgs.pkgs-errors).buildDepError "haskell-gi-base"))
          (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."http-client-tls" or ((hsPkgs.pkgs-errors).buildDepError "http-client-tls"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."multimap" or ((hsPkgs.pkgs-errors).buildDepError "multimap"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."rate-limit" or ((hsPkgs.pkgs-errors).buildDepError "rate-limit"))
          (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."scotty" or ((hsPkgs.pkgs-errors).buildDepError "scotty"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."status-notifier-item" or ((hsPkgs.pkgs-errors).buildDepError "status-notifier-item"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."time-locale-compat" or ((hsPkgs.pkgs-errors).buildDepError "time-locale-compat"))
          (hsPkgs."time-units" or ((hsPkgs.pkgs-errors).buildDepError "time-units"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          (hsPkgs."tuple" or ((hsPkgs.pkgs-errors).buildDepError "tuple"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."xdg-basedir" or ((hsPkgs.pkgs-errors).buildDepError "xdg-basedir"))
          (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
          (hsPkgs."xml-helpers" or ((hsPkgs.pkgs-errors).buildDepError "xml-helpers"))
          (hsPkgs."xmonad" or ((hsPkgs.pkgs-errors).buildDepError "xmonad"))
          ] ++ [
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          ];
        pkgconfig = [
          (pkgconfPkgs."gtk+-3.0" or ((hsPkgs.pkgs-errors).pkgConfDepError "gtk+-3.0"))
          ];
        buildable = true;
        };
      exes = {
        "taffybar" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."taffybar" or ((hsPkgs.pkgs-errors).buildDepError "taffybar"))
            ];
          pkgconfig = [
            (pkgconfPkgs."gtk+-3.0" or ((hsPkgs.pkgs-errors).pkgConfDepError "gtk+-3.0"))
            ];
          buildable = true;
          };
        };
      };
    }