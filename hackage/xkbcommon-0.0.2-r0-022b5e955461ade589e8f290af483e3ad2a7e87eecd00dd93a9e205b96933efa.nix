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
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "xkbcommon"; version = "0.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "auke@tulcod.com";
      author = "Auke Booij";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings for libxkbcommon";
      description = "Wrapper library for libxkbcommon, which is the new alternative for the X11 XKB.h keyboard input\nAPI. Specifically, it finds keymap files from disk based on Rule\\/Model\\/Layout\\/Variant\\/Option\nspecifications, and compiles them into a 'Keymap'. From this 'Keymap', a 'KeyboardState' can be\nconstructed which represents the states of various physical buttons such as the shift/alt/ctrl\nkeys, and can give the correct key symbol based on keyboard events. E.g., pressing the @\\<h\\>@ key\nwhile @\\<shift\\>@ is pressed produces the @H@ symbol in the common QWERTY keymaps, but in e.g.\nthe Dvorak keymap, it produces the D symbol.\n\nAfter keymap creation, which libxkbcommon can do based on locale preferences and enviroment\nvariables, this is all handled by routing keyboard events through libxkbcommon.\n\nAt this stage, these haskell bindings do not make libxkbcommon look much like a haskell library.\nFor example, in principle the entire libxkbcommon library is just a stateful processor, and has\nnothing to do with the IO monad.\nHowever, because I am not yet a very good haskell programmer, and because\nin most realistic use cases input data comes from the IO monad anyway, the stateful operations\nare encoded in the IO monad anyway.\n\nNote that these bindings load the keysym constants from the libxkbcommon C header files at\ncompile time using TH, and similarly keycodes from the Linux header files.\nThese should be present for correct compilation.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."storable-record" or (buildDepError "storable-record"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."cpphs" or (buildDepError "cpphs"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."data-flags" or (buildDepError "data-flags"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          ];
        libs = [ (pkgs."xkbcommon" or (sysDepError "xkbcommon")) ];
        };
      tests = {
        "context" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."xkbcommon" or (buildDepError "xkbcommon"))
            ];
          };
        "filecomp" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."xkbcommon" or (buildDepError "xkbcommon"))
            ];
          };
        "keyseq" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."xkbcommon" or (buildDepError "xkbcommon"))
            ];
          };
        "keysym" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."xkbcommon" or (buildDepError "xkbcommon"))
            ];
          };
        "rulescomp" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."xkbcommon" or (buildDepError "xkbcommon"))
            (hsPkgs."unix" or (buildDepError "unix"))
            ];
          };
        "state" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."xkbcommon" or (buildDepError "xkbcommon"))
            ];
          };
        "stringcomp" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."xkbcommon" or (buildDepError "xkbcommon"))
            ];
          };
        };
      benchmarks = {
        "bench-key-proc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."xkbcommon" or (buildDepError "xkbcommon"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
          };
        };
      };
    }