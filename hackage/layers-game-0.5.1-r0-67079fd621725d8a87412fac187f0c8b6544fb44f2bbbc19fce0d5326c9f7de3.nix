{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "layers-game";
        version = "0.5.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniel.trstenjak@gmail.com";
      author = "Daniel Trstenjak";
      homepage = "";
      url = "";
      synopsis = "A prototypical 2d platform game.";
      description = "/A prototypical 2d platform game/\n\n<<http://raw.githubusercontent.com/dan-t/layers/master/layers.png>>\n\n/Player Controls/\n\n> left/right arrow key = moving left/right\n> space/up arrow key   = jumping\n> tab key              = switch layer\n> q/escape key         = exit game\n\n/Flags/\n\n> -e --editmode             Start layers in edit mode\n> -l --loadlevelsfrom=FILE  Load levels from file\n> -s --savelevelsto=FILE    Save levels to file (default='LayersData.hs')\n> -h --help                 Display help message\n> -v --version              Print version information\n\n/Edit Mode/\n\n>a key = add new level after the current one and switch to it\n>A key = add new level before the current one and switch to it\n>n key = goto next level\n>N key = goto previous level\n>m key = move current level after the next one\n>M key = move current level before the previous one\n>l key = reload current level\n>s key = save levels to file specified by '-s'\n>r key = remove game object under mouse cursor\n>p key = place a star at mouse cursor position\n>e key = place an enemy at mouse cursor position\n>u key = start changing path of platform/enemy under mouse cursor,\n>        define path points by moving the mouse and clicking\n>        left mouse button, press 'u' again to end path definition\n>\n>left mouse button + ctrl  = move game object under mouse cursor\n>                            (hold mouse button pressed)\n>left mouse button + shift = resize platform under mouse cursor\n>                            (hold mouse button pressed)\n>left mouse button         = define new platform by holding the\n>                            button pressed and moving the mouse\n>mouse wheel               = change scale of orthographic projection";
      buildType = "Simple";
    };
    components = {
      exes = {
        "layers" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.pretty-show)
            (hsPkgs.cmdargs)
            (hsPkgs.data-lens)
            (hsPkgs.OpenGLRaw)
            (hsPkgs.GLFW-b)
            (hsPkgs.ListZipper)
            (hsPkgs.composition)
            (hsPkgs.Gamgine)
          ];
        };
      };
    };
  }