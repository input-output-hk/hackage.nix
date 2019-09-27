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
      identifier = { name = "iCalendar"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Tupil";
      maintainer = "Eelco Lempsink <eml+hackage@tupil.com>";
      author = "Eelco Lempsink <eml+hackage@tupil.com>";
      homepage = "";
      url = "";
      synopsis = "Parser for iCalendar format (RFC2445)";
      description = "Parser for the iCalendar format (version 2.0, RFC2445).\n\nFeatures:\n\n* Unfolds folded lines (see RFC)\n\n* Supports all IANA iCalendar tokens\n\n/Warning!/  This is version 0.0, important things are missing\n\n* Property and parameter values are not parsed, but kept as in the file.\n\n* There are no restrictions on the properties components can have.\n\n* Line unfolding causes error messages to report the wrong line.\n\nThis package is meant to grow to a full-fledged data definition, printer and\nparser for the iCalendar format.  But that will probably take some time.  So,\nif you've come here because you need this, please e-mail me (Eelco Lempsink).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          ];
        buildable = true;
        };
      };
    }