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
      identifier = { name = "syntax-example-json"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "Paweł Nowak 2014";
      maintainer = "Paweł Nowak <pawel834@gmail.com>";
      author = "Paweł Nowak";
      homepage = "";
      url = "";
      synopsis = "Example JSON parser/pretty-printer.";
      description = "Example JSON parser/pretty-printer.\n\nSource code:\n\n* <https://github.com/Pawel834/syntax-example-json/blob/7236aefc018ce3d968321b5b85ddcf80b46aeef4/Main.hs Main.hs>\n\nExample input and output:\n\n* <https://github.com/Pawel834/syntax-example-json/blob/master/in.json in.json>\n\n* <https://github.com/Pawel834/syntax-example-json/blob/master/out.json out.json>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "syntax-example-json" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."semi-iso" or (buildDepError "semi-iso"))
            (hsPkgs."syntax" or (buildDepError "syntax"))
            (hsPkgs."syntax-attoparsec" or (buildDepError "syntax-attoparsec"))
            (hsPkgs."syntax-printer" or (buildDepError "syntax-printer"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            ];
          buildable = true;
          };
        };
      };
    }