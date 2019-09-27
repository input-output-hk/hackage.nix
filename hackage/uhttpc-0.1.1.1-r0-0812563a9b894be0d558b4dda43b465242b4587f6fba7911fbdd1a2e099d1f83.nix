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
    flags = { network--ge-3_0_0 = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "uhttpc"; version = "0.1.1.1"; };
      license = "GPL-3.0-only";
      copyright = "© 2013-2019 Herbert Valerio Riedel";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "https://github.com/hvr/uhttpc";
      url = "";
      synopsis = "Minimal HTTP client library optimized for benchmarking";
      description = "@uhttpc@ contains a simple low-level and lightweight Haskell\n<https://tools.ietf.org/html/rfc2616 HTTP 1.1>\nlibrary optimized for providing the bare minimum required for HTTP\nbenchmarking purposes and allowing for time measurements of the\nindividual phases of the HTTP transaction.\n\nThis package also provides the command-line tool @uhttpc-bench@ as an\nusage example which mimics the popular\n<https://github.com/lighttpd/weighttp weighttp> HTTP benchmarking tool's\nCLI.\n\nWARNING: @uhttpc@ was originally developed for evaluating the new\n<http://haskell.cs.yale.edu/wp-content/uploads/2013/08/hask035-voellmy.pdf \\\"Mio\\\" parallel I/O manager>\nintroduced with GHC 7.8 and provide a base-line for HTTP client libraries.\nHowever, this is not a fully RFC compliant HTTP client library and\ntherefore ought not be used as a general purpose HTTP\nimplementation; Use libraries such as\n<http://hackage.haskell.org/package/http-streams http-streams>\ninstead which aim toward full RFC compliance as well as having good\nperformance.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."bytestring-lexing" or (buildDepError "bytestring-lexing"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          ] ++ (pkgs.lib).optionals (flags.network--ge-3_0_0) [
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."network-bsd" or (buildDepError "network-bsd"))
          ];
        buildable = true;
        };
      exes = {
        "uhttpc-bench" = {
          depends = [
            (hsPkgs."uhttpc" or (buildDepError "uhttpc"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bytestring-lexing" or (buildDepError "bytestring-lexing"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }