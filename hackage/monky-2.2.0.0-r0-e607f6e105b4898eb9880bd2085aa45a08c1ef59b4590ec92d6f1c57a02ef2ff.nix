let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { ibus = false; pulse = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "monky"; version = "2.2.0.0"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."statvfs" or (buildDepError "statvfs"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."netlink" or (buildDepError "netlink"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."formatting" or (buildDepError "formatting"))
          (hsPkgs."composition" or (buildDepError "composition"))
          (hsPkgs."env-locale" or (buildDepError "env-locale"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs."double-conversion" or (buildDepError "double-conversion"))) ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).lt "7.10") [
          (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          ]) ++ (pkgs.lib).optionals (flags.ibus) [
          (hsPkgs."ibus-hs" or (buildDepError "ibus-hs"))
          (hsPkgs."dbus" or (buildDepError "dbus"))
          ]) ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "7.8") ((pkgs.lib).optional (flags.pulse) (hsPkgs."pulseaudio" or (buildDepError "pulseaudio")));
        };
      exes = {
        "monky" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."monky" or (buildDepError "monky"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            ];
          };
        };
      };
    }