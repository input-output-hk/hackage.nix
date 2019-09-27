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
    flags = { binaries = false; stats = false; render = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "bff"; version = "0.3.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Janis Voigtlaender";
      author = "Janis Voigtlaender, Joachim Breitner";
      homepage = "";
      url = "";
      synopsis = "Bidirectionalization for Free! (POPL'09)";
      description = "This is an implementation of the ideas presented in \"Bidirectionalization\nfor Free!\" (paper at POPL'09) by Janis Voigtlaender.\n\nIt also includes an automatic deriver for the Zippable type class.\n\nUsing the cabal flag \"binaries\" will enable the creation of a web frontend\nto bff, in the form of a CGI program. Make sure you understand the\nsecurity implications before allowing untrusted access to the script.\n\nUsing the cabal flag \"stats\" will generate programs that collect performance\nstatistics about bff and print them as a table.\n\nUsing the cabal flag \"render\" will generate a program that renders collected\nperformance statistics as PDF files.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."category-extras" or (buildDepError "category-extras"))
          (hsPkgs."derive" or (buildDepError "derive"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."bimap" or (buildDepError "bimap"))
          (hsPkgs."unix" or (buildDepError "unix"))
          ];
        buildable = true;
        };
      exes = {
        "bff-shell" = {
          depends = (pkgs.lib).optionals (flags.binaries) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."hint" or (buildDepError "hint"))
            ];
          buildable = if flags.binaries then true else false;
          };
        "bff-cgi" = {
          depends = (pkgs.lib).optionals (flags.binaries) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."xhtml" or (buildDepError "xhtml"))
            (hsPkgs."cgi" or (buildDepError "cgi"))
            (hsPkgs."hint" or (buildDepError "hint"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ];
          buildable = if flags.binaries then true else false;
          };
        "bff-stats" = {
          depends = (pkgs.lib).optional (flags.stats) (hsPkgs."benchpress" or (buildDepError "benchpress"));
          buildable = if flags.stats then true else false;
          };
        "bff-stats-print" = {
          buildable = if flags.stats then true else false;
          };
        "bff-stats-render" = {
          depends = (pkgs.lib).optionals (flags.render) [
            (hsPkgs."Chart" or (buildDepError "Chart"))
            (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
            (hsPkgs."colour" or (buildDepError "colour"))
            ];
          buildable = if flags.render then true else false;
          };
        };
      };
    }