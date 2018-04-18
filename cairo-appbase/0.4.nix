{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cairo-appbase";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "conrad@metadecks.org";
        author = "Conrad Parker, Johan Bockgård";
        homepage = "";
        url = "";
        synopsis = "A template for building new GUI applications using GTK and Cairo.";
        description = "This template includes working callbacks to handle the File and Help\nmenus and File Save/Open dialogs, with dummy handlers for selecting\nfilenames and the Edit menu's Cut, Copy, and Paste. The main canvas uses\nCairo for graphics rendering, and includes example code from the cairo\npackage.\n\nTo build your own application on top of this, first grab the code. You\ncan either grab it from hackage with @cabal unpack cairo-appbase@, or\nclone the git repo:\n\n>   git clone git://github.com/kfish/cairo-appbase.git\n\nTo add widgets, install glade from your distro system and run\n@glade data/main.ui@. Save the resulting file in GtkBuilder format.\n\nNote that you must run @cabal install@ to put the UI file in the correct\nplace for your application to pick it up. To modify the code, edit\n@src/cairo-appbase.hs@. Hooking up functions to widgets is very simple: get\na widget by name (which you set in ui file), and hook one of its\nsignals (which you found in the Signals tab in glade) to an @IO ()@ action:\n\n> cut1 <- get G.castToMenuItem \"cut1\"\n> G.onActivateLeaf cut1 \$ myCut\n\nThe template code includes a trivial definition of myCut:\n\n> myCut :: IO ()\n> myCut = putStrLn \"Cut\"\n\nA real application will want to pass data to the callback. In C, this is\nfairly tedious as you only have a single void * to pass to callbacks as\n@user_data@, and applications typically do lots of marshalling and\nunmarshalling to pass data around. In Haskell however, you can make\nyourself a more complex callback handler and use a curried version of it\nin each instance:\n\n> cut1 <- get G.castToMenuItem \"cut1\"\n> G.onActivateLeaf cut1 \$ myComplexCut project phase 7\n>\n> ...\n>\n> myCut :: Project -> MoonPhase -> LuckyNumber -> IO ()\n> myCut project phase num = do\n>     let selection = currentSelection project\n>     when (phase == Full) howl\n>     when (num /= 7) fail\n>     doActualCut selection\n";
        buildType = "Simple";
      };
      components = {
        exes = {
          cairo-appbase = {
            depends  = [
              hsPkgs.glib
              hsPkgs.gtk
              hsPkgs.cairo
            ] ++ [ hsPkgs.base ];
          };
        };
      };
    }