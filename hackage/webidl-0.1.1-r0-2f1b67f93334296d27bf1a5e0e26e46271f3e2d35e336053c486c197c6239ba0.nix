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
      identifier = { name = "webidl"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Dmitry Golubovsky <golubovsky@gmail.com>";
      author = "Dmitry Golubovsky";
      homepage = "";
      url = "";
      synopsis = "Parser and Pretty Printer for the Web IDL Language";
      description = "Web IDL is a dialect of OMG IDL used by the Web App group to specify\ncomponent interfaces of Web applications. See also:\n\n<http://www.w3.org/TR/WebIDL/> - working draft of the specification\n\n<http://www.w3.org/2008/webapps/wiki/Main_Page> - Web App group wiki\n\n<http://code.google.com/p/es-operating-system/> - an experimental\nGoogle - Nintendo project from which the lexer/parser files for Web IDL\nare borrowed.\n\nThe package provides a Web IDL parsing\\/pretty-printing library, and\nthe two executable programs:\n\n* @idltestlex@: a debugging program which reads a Web IDL source\nfrom its standard input, and prints the list of tokens in raw format,\nas returned from the lexer.\n\n* @idlppr@: a debugging program which reads a Web IDL source\nfrom its standard input, parses, and pretty-prints it on its\nstandard output. Non-JavaDoc comments, and preprocessor directives\nthat the input might contain will not appear in the output.\nThe program may be used to test the parser and pretty printer\nin the way that when @idlppr@ reads a pretty-printed Web IDL source,\nthe output should be identical to the input.\n\nChanges from 1.1: the parser has been fixed to recognize outermost-declared\nscoped names (those starting with \"::\"), and allow for use of @DOMString@\nin typedefs and valuetypes, as the Web IDL working draft prescribes.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."utf8-env" or (buildDepError "utf8-env"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."LEXER" or (buildDepError "LEXER"))
          (hsPkgs."HSFFIG" or (buildDepError "HSFFIG"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          ];
        buildable = true;
        };
      exes = {
        "idlppr" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."utf8-env" or (buildDepError "utf8-env"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."LEXER" or (buildDepError "LEXER"))
            (hsPkgs."HSFFIG" or (buildDepError "HSFFIG"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            ];
          buildable = true;
          };
        "idltestlex" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."utf8-env" or (buildDepError "utf8-env"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."LEXER" or (buildDepError "LEXER"))
            (hsPkgs."HSFFIG" or (buildDepError "HSFFIG"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            ];
          buildable = true;
          };
        };
      };
    }