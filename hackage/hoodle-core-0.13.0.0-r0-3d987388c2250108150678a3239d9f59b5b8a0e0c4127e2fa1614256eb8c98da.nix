{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hoodle-core"; version = "0.13.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim";
      homepage = "http://ianwookim.org/hoodle";
      url = "";
      synopsis = "Core library for hoodle";
      description = "Hoodle is a pen notetaking program written in haskell.\nhoodle-core is the core library written in haskell and\nusing gtk2hs";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
          (hsPkgs."pango" or ((hsPkgs.pkgs-errors).buildDepError "pango"))
          (hsPkgs."gd" or ((hsPkgs.pkgs-errors).buildDepError "gd"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."coroutine-object" or ((hsPkgs.pkgs-errors).buildDepError "coroutine-object"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transformers-free" or ((hsPkgs.pkgs-errors).buildDepError "transformers-free"))
          (hsPkgs."hoodle-types" or ((hsPkgs.pkgs-errors).buildDepError "hoodle-types"))
          (hsPkgs."hoodle-parser" or ((hsPkgs.pkgs-errors).buildDepError "hoodle-parser"))
          (hsPkgs."hoodle-builder" or ((hsPkgs.pkgs-errors).buildDepError "hoodle-builder"))
          (hsPkgs."xournal-parser" or ((hsPkgs.pkgs-errors).buildDepError "xournal-parser"))
          (hsPkgs."hoodle-render" or ((hsPkgs.pkgs-errors).buildDepError "hoodle-render"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."configurator" or ((hsPkgs.pkgs-errors).buildDepError "configurator"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."Diff" or ((hsPkgs.pkgs-errors).buildDepError "Diff"))
          (hsPkgs."dyre" or ((hsPkgs.pkgs-errors).buildDepError "dyre"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."uuid" or ((hsPkgs.pkgs-errors).buildDepError "uuid"))
          (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."poppler" or ((hsPkgs.pkgs-errors).buildDepError "poppler"))
          (hsPkgs."fsnotify" or ((hsPkgs.pkgs-errors).buildDepError "fsnotify"))
          (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
          (hsPkgs."svgcairo" or ((hsPkgs.pkgs-errors).buildDepError "svgcairo"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."dbus" or ((hsPkgs.pkgs-errors).buildDepError "dbus"))
          (hsPkgs."network-simple" or ((hsPkgs.pkgs-errors).buildDepError "network-simple"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."pureMD5" or ((hsPkgs.pkgs-errors).buildDepError "pureMD5"))
          (hsPkgs."network-info" or ((hsPkgs.pkgs-errors).buildDepError "network-info"))
          ];
        libs = [
          (pkgs."X11" or ((hsPkgs.pkgs-errors).sysDepError "X11"))
          (pkgs."Xi" or ((hsPkgs.pkgs-errors).sysDepError "Xi"))
          (pkgs."dl" or ((hsPkgs.pkgs-errors).sysDepError "dl"))
          (pkgs."pthread" or ((hsPkgs.pkgs-errors).sysDepError "pthread"))
          ];
        buildable = true;
        };
      };
    }