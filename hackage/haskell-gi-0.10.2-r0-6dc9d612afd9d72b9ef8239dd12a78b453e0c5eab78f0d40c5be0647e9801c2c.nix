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
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "haskell-gi"; version = "0.10.2"; };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
      author = "Will Thompson,\nIñaki García Etxebarria,\nJonas Platte";
      homepage = "https://github.com/haskell-gi/haskell-gi";
      url = "";
      synopsis = "Generate Haskell bindings for GObject Introspection capable libraries";
      description = "Generate Haskell bindings for GObject Introspection capable libraries. This includes most notably\nGtk+, but many other libraries in the GObject ecosystem provide introspection data too.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "haskell-gi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."xdg-basedir" or (errorHandler.buildDepError "xdg-basedir"))
            (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
            (hsPkgs."haskell-gi-base" or (errorHandler.buildDepError "haskell-gi-base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            ];
          pkgconfig = [
            (pkgconfPkgs."gobject-introspection-1.0" or (errorHandler.pkgConfDepError "gobject-introspection-1.0"))
            (pkgconfPkgs."gobject-2.0" or (errorHandler.pkgConfDepError "gobject-2.0"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
            ];
          buildable = true;
          };
        };
      };
    }