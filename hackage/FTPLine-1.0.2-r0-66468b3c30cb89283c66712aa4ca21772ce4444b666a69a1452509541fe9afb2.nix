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
      identifier = { name = "FTPLine"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daniel Diaz <danieldiaz@asofilak.es>";
      author = "Daniel Diaz";
      homepage = "http://ddiaz.asofilak.es/packages/FTPLine";
      url = "";
      synopsis = "A command-line FTP client.";
      description = "A command-line FTP client. Type @help@ for a list of commands. Online documentation at the homepage.\n\nChanges from last version:\n\n* Now, FTPLine shows a correct version number.\n\n* Changed @handres@ error handling.\n\n* Added error handling to @curdir@ operation.\n\n* Removed @underline@ function (It didn't has any effect).\n\n* A little change on the welcome message.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "FTPLine" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."ftphs" or (buildDepError "ftphs"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            ];
          };
        };
      };
    }