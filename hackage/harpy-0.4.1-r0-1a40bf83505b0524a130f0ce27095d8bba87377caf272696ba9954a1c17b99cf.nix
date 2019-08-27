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
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "harpy"; version = "0.4.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "klee@cs.tu-berlin.de, magr@cs.tu-berlin.de";
      author = "Dirk Kleeblatt <klee@cs.tu-berlin.de>\nMartin Grabmueller <magr@cs.tu-berlin.de>";
      homepage = "http://uebb.cs.tu-berlin.de/harpy/";
      url = "";
      synopsis = "Runtime code generation for x86 machine code";
      description = "The package contains the following components:\n\n* An x86 assembler.  We provide both low-level code generation in\nmodule \"Harpy.X86CodeGen\" as well as a (slightly) higher-level\nimplementation in module \"Harpy.X86Assembler\", which figures out\naddressing modes based on an instruction's operand types.\n\n* An x86 disassembler which knows most of the opcodes available on\nmodern x86 processors and can display its output both in the style\nused in Intel documents an in AT&T style, like the GNU tools. The\ndisassmbler can be found in module \"Harpy.X86Disassembler\".\n\n* Some abstractions over the abovementioned code generation modules,\nsuch as automatic label management and code generation\ncombinators (for if-then-else statements, while-loops, functions)\n(module \"Harpy.X86CGCombinators\").\n\n* All the above modules use the code generation monad defined in module\n\"Harpy.CodeGenMonad\".\n\n* The Darcs repo and two tutorials on using Harpy can be found at\nHarpy's homepage: <http://uebb.cs.tu-berlin.de/harpy/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.small_base
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."array" or (buildDepError "array"))
            ]
          else [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ];
        };
      };
    }