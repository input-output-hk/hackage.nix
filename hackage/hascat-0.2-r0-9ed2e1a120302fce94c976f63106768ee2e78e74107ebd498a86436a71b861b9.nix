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
      specVersion = "0";
      identifier = { name = "hascat"; version = "0.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Björn Teegen 2006, Florian Micheler 2010";
      maintainer = "fmi@informatik.uni-kiel.de";
      author = "Björn Teegen, Florian Micheler";
      homepage = "";
      url = "";
      synopsis = "Hascat Web Server";
      description = "Hascat Web Server\n\nHow to install:\n\n1. install with cabal-install\n\n2. make a directory where you want the hascat-apps (hasclets) to be installed\n\n3. run\n\n\$ hascat-setup \\<directory\\>\n\n4. in that directory run:\n\n\$ hascat config.xml\n\n\nFor more information check my bachelor thesis:\n\n<http://www.informatik.uni-kiel.de/~fmi/bachelor.pdf>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hascat" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hascat-lib" or (buildDepError "hascat-lib"))
            (hsPkgs."hascat-system" or (buildDepError "hascat-system"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."HaXml" or (buildDepError "HaXml"))
            (hsPkgs."haxr" or (buildDepError "haxr"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."html" or (buildDepError "html"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."hascat-setup" or (buildDepError "hascat-setup"))
            ];
          buildable = true;
          };
        };
      };
    }