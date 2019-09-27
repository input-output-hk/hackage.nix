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
    flags = { our_server = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "free-theorems-webui"; version = "0.2.1.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "bartsch@cs.uni-bonn.de";
      author = "Matthias Bartsch";
      homepage = "";
      url = "";
      synopsis = "CGI-based web interface for the free-theorems package.";
      description = "This package provides access to the functionality of <http://hackage.haskell.org/package/free-theorems>\nthrough a web interface.\n\nAn online version can be seen at <http://www-ps.iai.uni-bonn.de/ft/>,\nwhere you can also find a more detailed description of the functionality.\n\nThere is also a shell based interface: <http://hackage.haskell.org/package/ftshell>.\n\nThe CGI binary is called \"free-theorems-webui.cgi\".\n\nTo start it locally for offline usage, just call \"free-theorems-webui\" after installation. (This needs python)";
      buildType = "Simple";
      };
    components = {
      exes = {
        "free-theorems-webui.cgi" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."free-theorems" or (buildDepError "free-theorems"))
            (hsPkgs."csv" or (buildDepError "csv"))
            (hsPkgs."cgi" or (buildDepError "cgi"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."xhtml" or (buildDepError "xhtml"))
            (hsPkgs."dataenc" or (buildDepError "dataenc"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          buildable = true;
          };
        "free-theorems-webui" = { buildable = true; };
        };
      };
    }