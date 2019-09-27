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
      specVersion = "1.6";
      identifier = { name = "dewdrop"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Keegan McAllister <mcallister.keegan@gmail.com>";
      author = "Nelson Elhage <nelhage@nelhage.com>, Keegan McAllister <mcallister.keegan@gmail.com>";
      homepage = "https://github.com/kmcallister/dewdrop";
      url = "";
      synopsis = "Find gadgets for return-oriented programming on x86";
      description = "Traditional buffer-overflow attacks work by filling a data buffer with\nexploit code and then redirecting execution to that buffer.  As a\ncountermeasure, modern operating systems will forbid (by default) the\nexecution of writable memory regions.\n\nReturn-oriented programming [1] is an alternative exploitation strategy\nthat works around this restriction.  The exploit payload is built by\nchaining together short code sequences (\\\"gadgets\\\") which are already\npresent in the exploited program, and thus are allowed to be executed.\n\ndewdrop is a Haskell library for finding useful gadgets in 32- and 64-bit\nx86 ELF binaries.  You can describe the desired gadget properties with a\nHaskell function, and use the @Dewdrop@ module to make a customized\ngadget-finder program.  Or you can import @Dewdrop.Analyze@ and integrate\nthis functionality into a larger program.\n\n\\[1\\] Shacham, Hovav. /The Geometry of Innocent Flesh on the Bone:/\n/Return-into-libc without Function Calls (on the x86)/. CCS 2007,\npages 552-561.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."hdis86" or (buildDepError "hdis86"))
          (hsPkgs."elf" or (buildDepError "elf"))
          (hsPkgs."syb" or (buildDepError "syb"))
          ];
        buildable = true;
        };
      };
    }