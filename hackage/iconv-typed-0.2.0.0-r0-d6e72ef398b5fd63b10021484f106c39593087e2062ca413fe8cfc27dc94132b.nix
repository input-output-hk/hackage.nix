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
      identifier = { name = "iconv-typed"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Alfredo Di Napoli";
      maintainer = "alfredo.dinapoli@gmail.com";
      author = "Alfredo Di Napoli";
      homepage = "https://github.com/adinapoli/iconv-typed#readme";
      url = "";
      synopsis = "Type safe iconv wrapper";
      description = "[Type safe iconv wrapper]\n\nAn experiment in bringing type safety to the <http://hackage.haskell.org/package/iconv iconv> package.\n\n[Usage Example]\n\nThis is almost a drop-in replacement. Compare the original code from `iconv`:\n\n> module Main where\n>\n> import Codec.Text.IConv\n>\n> main :: IO ()\n> main = print \$ convert \"UTF-8\" \"LATIN1\" \"hello\"\n\nWith the equivalent in `iconv-typed`:\n\n> module Main where\n>\n> import Codec.Text.IConv.Typed\n>\n> main :: IO ()\n> main = print \$ convert @\"UTF-8\" @\"LATIN1\" \"hello\"\n\nAs a result, this code will compile and run only if the passed encoding resolves to a supported\nencoding (as retrieved at compile time by calling \"iconv -l\"). For example, the following won't compile:\n\n> main = print \$ convert @\"UFT-8\" \"LATIN1\" \"hello\"\n\nAs `UFT` is mispelled.\n\nUsing GHC < 8.0 that doesn't supports `TypeInType`? No problem, we've got you covered!\n\n> module Main where\n>\n> import Codec.Text.IConv.Typed\n>\n> main :: IO ()\n> main = print \$ convert (E :: E \"UTF-8\") (E :: E \"LATIN1\") \"hello\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."iconv" or (buildDepError "iconv"))
          (hsPkgs."shelly" or (buildDepError "shelly"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "iconv-typed-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."iconv-typed" or (buildDepError "iconv-typed"))
            ];
          buildable = true;
          };
        };
      };
    }