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
    flags = {
      base4 = true;
      hpc = false;
      threaded = false;
      lhc-regress = false;
      with-base = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "lhc"; version = "0.6.20081211.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "lhc@projects.haskell.org";
      author = "John Meacham, David Himmelstrup";
      homepage = "http://lhc.seize.it/";
      url = "";
      synopsis = "LHC Haskell Compiler";
      description = "lhc is a haskell compiler which aims to produce the most efficient programs possible via whole\nprogram analysis and other optimizations.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "lhc" = {
          depends = [
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."graphviz" or (buildDepError "graphviz"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."stringtable-atom" or (buildDepError "stringtable-atom"))
            (hsPkgs."derive" or (buildDepError "derive"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            ] ++ (if flags.base4
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."syb" or (buildDepError "syb"))
              ]
            else [ (hsPkgs."base" or (buildDepError "base")) ]);
          buildable = true;
          };
        "lhc-regress" = {
          depends = [ (hsPkgs."process" or (buildDepError "process")) ] ++ [
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.lhc-regress then true else false;
          };
        };
      };
    }