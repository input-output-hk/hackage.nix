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
      identifier = { name = "named"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Vladislav Zavialov <vlad.z.4096@gmail.com>";
      author = "Vladislav Zavialov";
      homepage = "";
      url = "";
      synopsis = "Named parameters (keyword arguments) for Haskell";
      description = "`named` is a lightweight library for named function parameters (keyword\narguments) based on overloaded labels. Keyword arguments have several\nadvantages over positional arguments:\n\n* they can be supplied in arbitrary order\n* their names serve as documentation at call site\n* it is impossible to accidentally mix them up\n\nUnlike @newtype@ wrappers, keyword arguments don't pollute the global\nnamespace, don't require top-level definitions, and don't need to be\nexported.\n\nThis implementation of named parameters is typesafe, provides good type\ninference, descriptive type errors, and has no runtime overhead.\n\nExample usage:\n\n> import Named\n>\n> createSymLink :: FilePath `Named` \"from\" -> FilePath `Named` \"to\" -> IO ()\n> createSymLink (Named from) (Named to) = ...\n>\n> main = createSymLink ! #from \"/path/to/source\"\n>                      ! #to \"/target/path\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "regression" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."named" or (buildDepError "named"))
            ];
          buildable = true;
          };
        };
      };
    }