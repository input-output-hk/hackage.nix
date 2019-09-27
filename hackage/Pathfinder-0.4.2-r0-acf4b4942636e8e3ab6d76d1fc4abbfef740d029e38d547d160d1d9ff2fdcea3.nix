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
      specVersion = "1.8";
      identifier = { name = "Pathfinder"; version = "0.4.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "giorgidze@gmail.com";
      author = "George Giorgidze and Nils Schweinsberg";
      homepage = "";
      url = "";
      synopsis = "Relational optimiser and code generator";
      description = "The library provides FFI bindings to the Pathfinder relational optimiser and\ncode generator. Specifically, the provided functions allow for\n\n* optimisation of table algebra (a variant of relational algebra) expressions\n\n* and compilation of table algebra expressions into SQL:1999 queries\n\nNote that the C source bundle of Pathfinder is also included in this\npackage. The C sources are automatically built along with the Haskell FFI\nbindings. There is no need to download and install Pathfinder separately.\n\nMore information about Pathfinder is available from the following web page:\n\n* <http://www-db.informatik.uni-tuebingen.de/research/pathfinder>";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ];
        libs = [ (pkgs."xml2" or (sysDepError "xml2")) ];
        buildable = true;
        };
      };
    }