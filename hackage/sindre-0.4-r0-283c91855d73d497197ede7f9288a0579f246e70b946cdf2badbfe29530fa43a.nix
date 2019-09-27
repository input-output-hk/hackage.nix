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
      specVersion = "1.10";
      identifier = { name = "sindre"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "athas@sigkill.dk";
      author = "Troels Henriksen";
      homepage = "http://sigkill.dk/programs/sindre";
      url = "";
      synopsis = "A programming language for simple GUIs";
      description = "Sindre is a language inspired by Awk, meant for creating very simple\ngraphical user interfaces.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."X11" or (buildDepError "X11"))
          (hsPkgs."X11-xshape" or (buildDepError "X11-xshape"))
          (hsPkgs."X11-rm" or (buildDepError "X11-rm"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."x11-xim" or (buildDepError "x11-xim"))
          (hsPkgs."setlocale" or (buildDepError "setlocale"))
          (hsPkgs."regex-pcre" or (buildDepError "regex-pcre"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."permute" or (buildDepError "permute"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          ];
        pkgconfig = [ (pkgconfPkgs."xft" or (pkgConfDepError "xft")) ];
        buildable = true;
        };
      exes = {
        "sindre" = {
          depends = [
            (hsPkgs."X11" or (buildDepError "X11"))
            (hsPkgs."X11-xshape" or (buildDepError "X11-xshape"))
            (hsPkgs."X11-rm" or (buildDepError "X11-rm"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."x11-xim" or (buildDepError "x11-xim"))
            (hsPkgs."setlocale" or (buildDepError "setlocale"))
            (hsPkgs."regex-pcre" or (buildDepError "regex-pcre"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."permute" or (buildDepError "permute"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ];
          pkgconfig = [ (pkgconfPkgs."xft" or (pkgConfDepError "xft")) ];
          buildable = true;
          };
        };
      };
    }