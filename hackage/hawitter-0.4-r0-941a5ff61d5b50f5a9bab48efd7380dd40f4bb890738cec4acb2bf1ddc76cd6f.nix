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
      specVersion = "1.2";
      identifier = { name = "hawitter"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daiki Handa <xanxys@gmail.com>";
      author = "Daiki Handa <xanxys@gmail.com>";
      homepage = "http://d.hatena.ne.jp/xanxys/20100321/1269137834";
      url = "";
      synopsis = "A twitter client for GTK+. Beta version.";
      description = "A slick twitter client for GTK. Features syntax highlighting of tweets and URL linking.\nAutomatic URL shortening and 'timeline modifier' will be implemented in future versions.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hawitter" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."glade" or (buildDepError "glade"))
            (hsPkgs."gconf" or (buildDepError "gconf"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."regex-base" or (buildDepError "regex-base"))
            (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."json" or (buildDepError "json"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."hoauth" or (buildDepError "hoauth"))
            (hsPkgs."SHA" or (buildDepError "SHA"))
            (hsPkgs."base64-string" or (buildDepError "base64-string"))
            (hsPkgs."clock" or (buildDepError "clock"))
            ];
          };
        };
      };
    }