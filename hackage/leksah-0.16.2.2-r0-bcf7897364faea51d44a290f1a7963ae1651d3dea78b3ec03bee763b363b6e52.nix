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
    flags = {
      webkit2 = true;
      yi = false;
      codemirror = false;
      dyre = true;
      threaded = true;
      loc = false;
      network-uri = true;
      gtk-318 = true;
      gtk-320 = true;
    };
    package = {
      specVersion = "1.18";
      identifier = { name = "leksah"; version = "0.16.2.2"; };
      license = "LicenseRef-GPL";
      copyright = "2007-2016 Juergen Nicklisch-Franken, Hamish Mackenzie, Jacco Krijnen, JP Moresmau";
      maintainer = "maintainer@leksah.org";
      author = "Juergen Nicklisch-Franken, Hamish Mackenzie, Jacco Krijnen, JP Moresmau";
      homepage = "http://www.leksah.org";
      url = "http://code.haskell.org/leksah";
      synopsis = "Haskell IDE written in Haskell";
      description = "An Integrated Development Environment for Haskell written in Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ((((((((([
          (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
          (hsPkgs."haskell-gi-base" or (errorHandler.buildDepError "haskell-gi-base"))
          (hsPkgs."gi-glib" or (errorHandler.buildDepError "gi-glib"))
          (hsPkgs."gi-gobject" or (errorHandler.buildDepError "gi-gobject"))
          (hsPkgs."gi-gio" or (errorHandler.buildDepError "gi-gio"))
          (hsPkgs."gi-cairo" or (errorHandler.buildDepError "gi-cairo"))
          (hsPkgs."gi-gdk" or (errorHandler.buildDepError "gi-gdk"))
          (hsPkgs."gi-gdkpixbuf" or (errorHandler.buildDepError "gi-gdkpixbuf"))
          (hsPkgs."gi-gtk" or (errorHandler.buildDepError "gi-gtk"))
          (hsPkgs."gi-pango" or (errorHandler.buildDepError "gi-pango"))
          (hsPkgs."gi-gtksource" or (errorHandler.buildDepError "gi-gtksource"))
          (hsPkgs."gi-gtk-hs" or (errorHandler.buildDepError "gi-gtk-hs"))
          (hsPkgs."ghcjs-codemirror" or (errorHandler.buildDepError "ghcjs-codemirror"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."regex-tdfa-text" or (errorHandler.buildDepError "regex-tdfa-text"))
          (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."ltk" or (errorHandler.buildDepError "ltk"))
          (hsPkgs."binary-shared" or (errorHandler.buildDepError "binary-shared"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."executable-path" or (errorHandler.buildDepError "executable-path"))
          (hsPkgs."vcsgui" or (errorHandler.buildDepError "vcsgui"))
          (hsPkgs."vcswrapper" or (errorHandler.buildDepError "vcswrapper"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
          (hsPkgs."vado" or (errorHandler.buildDepError "vado"))
          (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
          (hsPkgs."cpphs" or (errorHandler.buildDepError "cpphs"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."fsnotify" or (errorHandler.buildDepError "fsnotify"))
          (hsPkgs."haskell-gi-overloading" or (errorHandler.buildDepError "haskell-gi-overloading"))
        ] ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ])) ++ pkgs.lib.optional (system.isOsx) (hsPkgs."gi-gtkosxapplication" or (errorHandler.buildDepError "gi-gtkosxapplication"))) ++ (if flags.webkit2 && !system.isWindows
          then [
            (hsPkgs."gi-webkit2" or (errorHandler.buildDepError "gi-webkit2"))
          ]
          else [
            (hsPkgs."gi-webkit" or (errorHandler.buildDepError "gi-webkit"))
          ])) ++ pkgs.lib.optionals (flags.yi) [
          (hsPkgs."yi" or (errorHandler.buildDepError "yi"))
          (hsPkgs."yi-language" or (errorHandler.buildDepError "yi-language"))
          (hsPkgs."yi-rope" or (errorHandler.buildDepError "yi-rope"))
        ]) ++ pkgs.lib.optional (flags.yi && flags.dyre) (hsPkgs."dyre" or (errorHandler.buildDepError "dyre"))) ++ pkgs.lib.optionals (flags.codemirror) [
          (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
        ]) ++ pkgs.lib.optionals (flags.loc && system.isLinux) [
          (hsPkgs."hgettext" or (errorHandler.buildDepError "hgettext"))
          (hsPkgs."setlocale" or (errorHandler.buildDepError "setlocale"))
        ]) ++ (if flags.network-uri
          then [
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ]
          else [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.2") (hsPkgs."binary-shared" or (errorHandler.buildDepError "binary-shared"))) ++ pkgs.lib.optionals (!(compiler.isGhcjs && true)) [
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."leksah-server" or (errorHandler.buildDepError "leksah-server"))
        ];
        libs = pkgs.lib.optional (system.isWindows) (pkgs."kernel32" or (errorHandler.sysDepError "kernel32"));
        pkgconfig = pkgs.lib.optional (flags.gtk-318) (pkgconfPkgs."gtk+-3.0" or (errorHandler.pkgConfDepError "gtk+-3.0")) ++ pkgs.lib.optional (flags.gtk-320) (pkgconfPkgs."gtk+-3.0" or (errorHandler.pkgConfDepError "gtk+-3.0"));
        buildable = true;
      };
      exes = {
        "leksah" = {
          depends = (([
            (hsPkgs."leksah" or (errorHandler.buildDepError "leksah"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gi-gtk-hs" or (errorHandler.buildDepError "gi-gtk-hs"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))) ++ pkgs.lib.optionals (system.isLinux && flags.loc) [
            (hsPkgs."hgettext" or (errorHandler.buildDepError "hgettext"))
            (hsPkgs."setlocale" or (errorHandler.buildDepError "setlocale"))
          ]) ++ pkgs.lib.optional (!(compiler.isGhcjs && true)) (hsPkgs."leksah-server" or (errorHandler.buildDepError "leksah-server"));
          libs = pkgs.lib.optional (system.isWindows) (pkgs."kernel32" or (errorHandler.sysDepError "kernel32"));
          buildable = true;
        };
      };
    };
  }