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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "timeplot"; version = "0.1.7"; };
      license = "BSD-3-Clause";
      copyright = "Eugene Kirpichov, 2009";
      maintainer = "Eugene Kirpichov <ekirpichov@gmail.com>";
      author = "Eugene Kirpichov <ekirpichov@gmail.com>";
      homepage = "http://haskell.org/haskellwiki/Timeplot";
      url = "";
      synopsis = "A tool for visualizing time series from log files.";
      description = "A tool for visualizing time series from log files.\nReads an input file with events in different \"tracks\" and draws a diagram for\neach track, where a diagram may be one of 8 types. See --help for help and the\nhomepage for a bigger description, examples and a tutorial.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "tplot" = {
          depends = [
            (hsPkgs."Chart" or (buildDepError "Chart"))
            (hsPkgs."cairo" or (buildDepError "cairo"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bytestring-lexing" or (buildDepError "bytestring-lexing"))
            (hsPkgs."strptime" or (buildDepError "strptime"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
            (hsPkgs."data-accessor-template" or (buildDepError "data-accessor-template"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."regex-pcre" or (buildDepError "regex-pcre"))
            ] ++ [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        };
      };
    }