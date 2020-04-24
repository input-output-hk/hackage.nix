{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "xkbcommon"; version = "0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "auke@tulcod.com";
      author = "Auke Booij";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings for libxkbcommon";
      description = "Wrapper library for libxkbcommon, which is the new alternative for the X11 XKB.h keyboard input\nAPI. Specifically, it finds keymap files from disk based on Rule\\/Model\\/Layout\\/Variant\\/Option\nspecifications, and compiles them into a 'Keymap'. From this 'Keymap', a 'KeyboardState' can be\nconstructed which represents the states of various physical buttons such as the shift/alt/ctrl\nkeys, and can give the correct key symbol based on keyboard events. E.g., pressing the @\\<h\\>@ key\nwhile @\\<shift\\>@ is pressed produces the @H@ symbol in the common QWERTY keymaps, but in e.g.\nthe Dvorak keymap, it produces the D symbol.\n\nAfter keymap creation, which libxkbcommon can do based on locale preferences and enviroment\nvariables, this is all handled by routing keyboard events through libxkbcommon.\n\nAt this stage, these haskell bindings do not make libxkbcommon look much like a haskell library.\nFor example, in principle the entire libxkbcommon library is just a stateful processor, and has\nnothing to do with the IO monad.\nHowever, because I am not yet a very good haskell programmer, and because\nin most realistic use cases input data comes from the IO monad anyway, the stateful operations\nare encoded in the IO monad anyway.\n\nNote that these bindings load the keysym constants from the libxkbcommon C header files at\ncompile time using TH, and similarly keycodes from the Linux header files.\nThese should be present for correct compilation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."storable-record" or ((hsPkgs.pkgs-errors).buildDepError "storable-record"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."cpphs" or ((hsPkgs.pkgs-errors).buildDepError "cpphs"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."data-flags" or ((hsPkgs.pkgs-errors).buildDepError "data-flags"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          ];
        buildable = true;
        };
      tests = {
        "context" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."xkbcommon" or ((hsPkgs.pkgs-errors).buildDepError "xkbcommon"))
            ];
          libs = [
            (pkgs."xkbcommon" or ((hsPkgs.pkgs-errors).sysDepError "xkbcommon"))
            ];
          buildable = true;
          };
        "filecomp" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."xkbcommon" or ((hsPkgs.pkgs-errors).buildDepError "xkbcommon"))
            ];
          libs = [
            (pkgs."xkbcommon" or ((hsPkgs.pkgs-errors).sysDepError "xkbcommon"))
            ];
          buildable = true;
          };
        "keyseq" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."xkbcommon" or ((hsPkgs.pkgs-errors).buildDepError "xkbcommon"))
            ];
          libs = [
            (pkgs."xkbcommon" or ((hsPkgs.pkgs-errors).sysDepError "xkbcommon"))
            ];
          buildable = true;
          };
        "keysym" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."xkbcommon" or ((hsPkgs.pkgs-errors).buildDepError "xkbcommon"))
            ];
          libs = [
            (pkgs."xkbcommon" or ((hsPkgs.pkgs-errors).sysDepError "xkbcommon"))
            ];
          buildable = true;
          };
        "rulescomp" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."xkbcommon" or ((hsPkgs.pkgs-errors).buildDepError "xkbcommon"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ];
          libs = [
            (pkgs."xkbcommon" or ((hsPkgs.pkgs-errors).sysDepError "xkbcommon"))
            ];
          buildable = true;
          };
        "state" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."xkbcommon" or ((hsPkgs.pkgs-errors).buildDepError "xkbcommon"))
            ];
          libs = [
            (pkgs."xkbcommon" or ((hsPkgs.pkgs-errors).sysDepError "xkbcommon"))
            ];
          buildable = true;
          };
        "stringcomp" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."xkbcommon" or ((hsPkgs.pkgs-errors).buildDepError "xkbcommon"))
            ];
          libs = [
            (pkgs."xkbcommon" or ((hsPkgs.pkgs-errors).sysDepError "xkbcommon"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-key-proc" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."xkbcommon" or ((hsPkgs.pkgs-errors).buildDepError "xkbcommon"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          libs = [
            (pkgs."xkbcommon" or ((hsPkgs.pkgs-errors).sysDepError "xkbcommon"))
            ];
          buildable = true;
          };
        };
      };
    }