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
    flags = { static = false; llvm = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "PortFusion"; version = "1.0.3.2"; };
      license = "GPL-3.0-only";
      copyright = "Copyright © 2012 Cetin Sert";
      maintainer = "Cetin Sert <fusion@corsis.eu>";
      author = "Cetin Sert <fusion@corsis.eu>";
      homepage = "http://fusion.corsis.eu";
      url = "http://fusion.corsis.eu";
      synopsis = "high-perf. distributed reverse / forward proxy & tunneling solution for TCP";
      description = "PortFusion is a minimalistic, cross-platform, transport-layer\ndistributed reverse / forward proxy & tunneling solution for TCP\n(RDP, SSH, HTTP(S), (S)FTP, VNC, ...) released under GPLv3.\n\nA single package that makes the most of each platform by tapping\ninto their unique capabilities, combining this power with an\nintuitive interface, beautiful design and Haskell's excellent\nsupport for unprecedented levels of concurrency and parallelism.\n\nIt strives for the smallest source code size while delivering\nmaximum throughput with near zero overhead.\n\n[Official Binaries]\nvisit <http://fusion.corsis.eu> to download for:\n\n* Windows\n\n* GNU/Linux\n\n* Mac OS X\n\n* FreeBSD\n\n[Version Scheme]\nMajor-@/R/@-ewrite . New-@/F/@-unctionality . @/I/@-mprovementAndBugFixes . @/P/@-ackagingOnly\n\n* @PackagingOnly@ changes are made for quality assurance reasons.\n\n* No new official binary releases are made for @PackagingOnly@ changes.\n\n* Official @r.f.i@ binaries are bit-for-bit the same as @r.f.i.p@ builds for all @p@.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "PortFusion" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."splice" or (buildDepError "splice"))
            ] ++ [ (hsPkgs."network" or (buildDepError "network")) ];
          };
        };
      };
    }