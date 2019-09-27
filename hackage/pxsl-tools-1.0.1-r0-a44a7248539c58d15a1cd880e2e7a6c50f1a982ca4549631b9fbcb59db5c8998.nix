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
      identifier = { name = "pxsl-tools"; version = "1.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "2003-2008 Thomas G. Moertel <tom@moertel.com>";
      maintainer = "Tom Moertel <tom@moertel.com>";
      author = "Tom Moertel <tom@moertel.com>";
      homepage = "http://community.moertel.com/ss/space/PXSL";
      url = "";
      synopsis = "Parsimonious XML Shorthand Language--to-XML compiler";
      description = "The package contains the pxslcc compiler, which converts\nParsimonious XML Shorthand Language (PXSL) into XML.  PXSL (\"pixel\")\nis a convenient shorthand for writing markup-heavy XML documents.\nIt provides XML authors and programmers with a simple, concise\nsyntax that they can use to create XML documents. For more advanced\nusers, PXSL offers customizable shortcuts and sophisticated\nrefactoring tools like functional macros that can markedly reduce\nthe size and complexity of markup-dense XML documents.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pxslcc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }