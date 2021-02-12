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
      identifier = { name = "xkbcommon"; version = "0.0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "auke@tulcod.com";
      author = "Auke Booij";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings for libxkbcommon";
      description = "Wrapper library for libxkbcommon, which is the new alternative for the X11 XKB.h keyboard input\nAPI. Specifically, it finds keymap files from disk based on Rule\\/Model\\/Layout\\/Variant\\/Option\nspecifications, and compiles them into a 'Keymap'. From this 'Keymap', a 'KeyboardState' can be\nconstructed which represents the states of various physical buttons such as the shift/alt/ctrl\nkeys, and can give the correct key symbol based on keyboard events. E.g., pressing the @\\<h\\>@ key\nwhile @\\<shift\\>@ is pressed produces the @H@ symbol in the common QWERTY keymaps, but in e.g.\nthe Dvorak keymap, it produces the D symbol.\n\nAfter keymap creation, which libxkbcommon can do based on locale preferences and enviroment\nvariables, this is all handled by routing keyboard events through libxkbcommon.\n\nAt this stage, these haskell bindings do not make libxkbcommon look much like a haskell library.\nFor example, in principle the entire libxkbcommon library is just a stateful processor, and has\nnothing to do with the IO monad.\nHowever, because I am not yet a very good haskell programmer, and because\nin most realistic use cases input data comes from the IO monad anyway, the stateful operations\nare encoded in the IO monad anyway.\n\nNote that these bindings load the keysym constants from the libxkbcommon C header files at\ncompile time using TH, and similarly keycodes from the Linux header files.\nThese should be present for correct compilation.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs or (errorHandler.setupDepError "cpphs")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (errorHandler.setupDepError "filepath")))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process or (errorHandler.setupDepError "process")))
        (hsPkgs.buildPackages.template-haskell or (pkgs.buildPackages.template-haskell or (errorHandler.setupDepError "template-haskell")))
        (hsPkgs.buildPackages.text or (pkgs.buildPackages.text or (errorHandler.setupDepError "text")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."storable-record" or (errorHandler.buildDepError "storable-record"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."cpphs" or (errorHandler.buildDepError "cpphs"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-flags" or (errorHandler.buildDepError "data-flags"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
        libs = [ (pkgs."xkbcommon" or (errorHandler.sysDepError "xkbcommon")) ];
        buildable = true;
        };
      tests = {
        "context" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xkbcommon" or (errorHandler.buildDepError "xkbcommon"))
            ];
          buildable = true;
          };
        "filecomp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xkbcommon" or (errorHandler.buildDepError "xkbcommon"))
            ];
          buildable = true;
          };
        "keyseq" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xkbcommon" or (errorHandler.buildDepError "xkbcommon"))
            ];
          buildable = true;
          };
        "keysym" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xkbcommon" or (errorHandler.buildDepError "xkbcommon"))
            ];
          buildable = true;
          };
        "rulescomp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xkbcommon" or (errorHandler.buildDepError "xkbcommon"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        "state" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xkbcommon" or (errorHandler.buildDepError "xkbcommon"))
            ];
          buildable = true;
          };
        "stringcomp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xkbcommon" or (errorHandler.buildDepError "xkbcommon"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-key-proc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xkbcommon" or (errorHandler.buildDepError "xkbcommon"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }