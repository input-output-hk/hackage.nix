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
    flags = { dyre = false; hub = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hoodle-core"; version = "0.16.0"; };
      license = "BSD-3-Clause";
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
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
          (hsPkgs."coroutine-object" or (errorHandler.buildDepError "coroutine-object"))
          (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."fsnotify" or (errorHandler.buildDepError "fsnotify"))
          (hsPkgs."gd" or (errorHandler.buildDepError "gd"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."pango" or (errorHandler.buildDepError "pango"))
          (hsPkgs."poppler" or (errorHandler.buildDepError "poppler"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."svgcairo" or (errorHandler.buildDepError "svgcairo"))
          (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-free" or (errorHandler.buildDepError "transformers-free"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
          (hsPkgs."xournal-parser" or (errorHandler.buildDepError "xournal-parser"))
          (hsPkgs."hoodle-builder" or (errorHandler.buildDepError "hoodle-builder"))
          (hsPkgs."hoodle-parser" or (errorHandler.buildDepError "hoodle-parser"))
          (hsPkgs."hoodle-publish" or (errorHandler.buildDepError "hoodle-publish"))
          (hsPkgs."hoodle-render" or (errorHandler.buildDepError "hoodle-render"))
          (hsPkgs."hoodle-types" or (errorHandler.buildDepError "hoodle-types"))
          ] ++ (pkgs.lib).optional (flags.dyre) (hsPkgs."dyre" or (errorHandler.buildDepError "dyre"))) ++ (pkgs.lib).optionals (flags.hub) [
          (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."network-info" or (errorHandler.buildDepError "network-info"))
          (hsPkgs."network-simple" or (errorHandler.buildDepError "network-simple"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."persistent-sqlite" or (errorHandler.buildDepError "persistent-sqlite"))
          (hsPkgs."persistent-template" or (errorHandler.buildDepError "persistent-template"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
          (hsPkgs."handa-gdata" or (errorHandler.buildDepError "handa-gdata"))
          ];
        libs = [
          (pkgs."X11" or (errorHandler.sysDepError "X11"))
          (pkgs."Xi" or (errorHandler.sysDepError "Xi"))
          (pkgs."dl" or (errorHandler.sysDepError "dl"))
          (pkgs."pthread" or (errorHandler.sysDepError "pthread"))
          ];
        buildable = true;
        };
      };
    }