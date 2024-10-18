{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { deprecated-pager-hints = true; };
    package = {
      specVersion = "3.4";
      identifier = { name = "taffybar"; version = "4.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "IvanMalison@gmail.com";
      author = "Ivan Malison";
      homepage = "http://github.com/taffybar/taffybar";
      url = "";
      synopsis = "A desktop bar similar to xmobar, but with more GUI";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HStringTemplate" or (errorHandler.buildDepError "HStringTemplate"))
          (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."broadcast-chan" or (errorHandler.buildDepError "broadcast-chan"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
          (hsPkgs."dbus-hslogger" or (errorHandler.buildDepError "dbus-hslogger"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."dyre" or (errorHandler.buildDepError "dyre"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."enclosed-exceptions" or (errorHandler.buildDepError "enclosed-exceptions"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."gi-cairo-connector" or (errorHandler.buildDepError "gi-cairo-connector"))
          (hsPkgs."gi-cairo-render" or (errorHandler.buildDepError "gi-cairo-render"))
          (hsPkgs."gi-gdk" or (errorHandler.buildDepError "gi-gdk"))
          (hsPkgs."gi-gdkpixbuf" or (errorHandler.buildDepError "gi-gdkpixbuf"))
          (hsPkgs."gi-gdkx11" or (errorHandler.buildDepError "gi-gdkx11"))
          (hsPkgs."gi-glib" or (errorHandler.buildDepError "gi-glib"))
          (hsPkgs."gi-gtk" or (errorHandler.buildDepError "gi-gtk"))
          (hsPkgs."gi-gtk-hs" or (errorHandler.buildDepError "gi-gtk-hs"))
          (hsPkgs."gi-pango" or (errorHandler.buildDepError "gi-pango"))
          (hsPkgs."gtk-sni-tray" or (errorHandler.buildDepError "gtk-sni-tray"))
          (hsPkgs."gtk-strut" or (errorHandler.buildDepError "gtk-strut"))
          (hsPkgs."haskell-gi-base" or (errorHandler.buildDepError "haskell-gi-base"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."multimap" or (errorHandler.buildDepError "multimap"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."rate-limit" or (errorHandler.buildDepError "rate-limit"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."status-notifier-item" or (errorHandler.buildDepError "status-notifier-item"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."time-locale-compat" or (errorHandler.buildDepError "time-locale-compat"))
          (hsPkgs."time-units" or (errorHandler.buildDepError "time-units"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."tuple" or (errorHandler.buildDepError "tuple"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."xdg-desktop-entry" or (errorHandler.buildDepError "xdg-desktop-entry"))
          (hsPkgs."xdg-basedir" or (errorHandler.buildDepError "xdg-basedir"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."xml-helpers" or (errorHandler.buildDepError "xml-helpers"))
        ] ++ pkgs.lib.optional (flags.deprecated-pager-hints) (hsPkgs."xmonad" or (errorHandler.buildDepError "xmonad"));
        pkgconfig = [
          (pkgconfPkgs."gtk+-3.0" or (errorHandler.pkgConfDepError "gtk+-3.0"))
        ];
        buildable = true;
      };
      exes = {
        "taffybar" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."taffybar" or (errorHandler.buildDepError "taffybar"))
          ];
          pkgconfig = [
            (pkgconfPkgs."gtk+-3.0" or (errorHandler.pkgConfDepError "gtk+-3.0"))
          ];
          buildable = true;
        };
      };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."hspec-golden" or (errorHandler.buildDepError "hspec-golden"))
            (hsPkgs."taffybar" or (errorHandler.buildDepError "taffybar"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }