{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { ibus = false; pulse = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "monky"; version = "2.1.3.0"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "Markus Ongyerth <ongy@ongy.net>";
      author = "Moepi, Ongy";
      homepage = "";
      url = "";
      synopsis = "A system state collecting library and application";
      description = "monky started as an alternative to conky, i3-status or similar, that's fully containing in one process.\nAlso making an effort to keep file descriptors or handles as long as possible.\nmonky 2.0 is the first version on hackage.\n\nmonky consists of multiple parts. A number of collection modules, output modules, \"examples\" and a helper application.\n\n* collection modules\n\nThe collection modules are the core library. Collection modules export a handle that can\nbe used to get some detail about the system. They can be used without the other parts\nof this package, but they are designed with monky in mind.\n\n* output modules\n\nOutput modules take a monky specific output type and transform it into something that can be\ndisplayed by some external application. That may be a statusbar (dzen2), the terminal,\na network port, that makes it accessible on another machine, or any other thing.\n\n* examples\n\nThe examples are a group of modules, that use collection modules to create the output used\nby the output modules. The flexibility of the examples varies greatly, some may are really\nflexible, some are rather static. The intended usecase is for users to create their own\nexamples and use them, if they don't want to use the provided ones.\n\nLater on, I want to create something like xmonad-contrib or a collection of user examples,\nto provide better usability for users with few to no experience with haskell.\n\n* helper application\n\nThe helper application is used to compile the actual output generator and can generate an\nexample configuration.\n\nTo generate an example configuration in /~\\/.monky/ simply run `monky`.\nThen modify /~\\/.monky\\/monky.hs/ to create your own configuration.\n\nModules can have two types. 'PollModule' and 'EvtModule'. 'PollModule's work by the main loop\nasking the module to generate new output, while 'EvtModule's block until some event is received and\nupdate their output on demand. Some handles are an instance of both, 'PollModule' and 'EvtModule'.\n'EvtModule' should be preferred, since they induce less load on your system.\nThe monky main-loop does one \"tick\" every second. 'PollModules' are updated each /N/ ticks, where\n/N/ is passed to 'pollPack'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."statvfs" or ((hsPkgs.pkgs-errors).buildDepError "statvfs"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."netlink" or ((hsPkgs.pkgs-errors).buildDepError "netlink"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."formatting" or ((hsPkgs.pkgs-errors).buildDepError "formatting"))
          (hsPkgs."composition" or ((hsPkgs.pkgs-errors).buildDepError "composition"))
          (hsPkgs."env-locale" or ((hsPkgs.pkgs-errors).buildDepError "env-locale"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs."double-conversion" or ((hsPkgs.pkgs-errors).buildDepError "double-conversion"))) ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).lt "7.10") [
          (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          ]) ++ (pkgs.lib).optionals (flags.ibus) [
          (hsPkgs."ibus-hs" or ((hsPkgs.pkgs-errors).buildDepError "ibus-hs"))
          (hsPkgs."dbus" or ((hsPkgs.pkgs-errors).buildDepError "dbus"))
          ]) ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "7.8") ((pkgs.lib).optional (flags.pulse) (hsPkgs."pulseaudio" or ((hsPkgs.pkgs-errors).buildDepError "pulseaudio")));
        buildable = true;
        };
      exes = {
        "monky" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."monky" or ((hsPkgs.pkgs-errors).buildDepError "monky"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }