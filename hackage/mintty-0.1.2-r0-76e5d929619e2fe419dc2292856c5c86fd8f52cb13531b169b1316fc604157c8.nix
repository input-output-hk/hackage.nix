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
    flags = { win32-2-5-3 = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "mintty"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2017 Ryan Scott";
      maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Ryan Scott";
      homepage = "https://github.com/RyanGlScott/mintty";
      url = "";
      synopsis = "A reliable way to detect the presence of a MinTTY console on Windows";
      description = "MinTTY is a Windows-specific terminal emulator for the\nwidely used Cygwin and MSYS projects, which provide\nUnix-like environments for Windows. MinTTY consoles behave\ndifferently from native Windows consoles (such as\n@cmd.exe@ or PowerShell) in many ways, and in some cases,\nthese differences make it necessary to treat MinTTY\nconsoles differently in code.\n\nThe @mintty@ library provides a simple way to detect if\nyour code in running in a MinTTY console on Windows. It\nexports @isMinTTY@, which does the right thing 90% of the\ntime (by checking if standard error is attached to\nMinTTY), and it also exports @isMinTTYHandle@ for the\nother 10% of the time (when you want to check is some\narbitrary handle is attached to MinTTY). As you might\nexpect, both of these functions will simply return @False@\non any non-Windows operating system.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          ] ++ (pkgs.lib).optionals (system.isWindows) (if flags.win32-2-5-3
          then [ (hsPkgs."Win32" or (buildDepError "Win32")) ]
          else [
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."Win32" or (buildDepError "Win32"))
            ]);
        build-tools = (pkgs.lib).optionals (system.isWindows) ((pkgs.lib).optional (!flags.win32-2-5-3) (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs"))));
        buildable = true;
        };
      };
    }