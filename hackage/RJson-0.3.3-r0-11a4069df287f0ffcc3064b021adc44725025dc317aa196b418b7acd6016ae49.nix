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
      identifier = { name = "RJson"; version = "0.3.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "a.d.drummond@gmail.com";
      author = "Alex Drummond";
      homepage = "";
      url = "";
      synopsis = "A reflective JSON serializer/parser.";
      description = "See included README for some examples.\nThis package uses the Scrap Your Boilerplate With Class approach\nto generics to implement a reflective Json serializer and deserializer.\nNested record types can be automatically converted to corresponding\nJSON objects and vice versa. In both cases, various aspects of\nserializing and deserializing can be customized by implementing instances of\ntype classes. Note that only Haskell 98 types can be\nserialized and deserialized, and that the use of strict constructors will lead\nto runtime errors with the current implemetation. Apart from the\nreflective stuff, the package also provides a straightforward\nHaskell representation of JSON data, together with a unicode-safe\nparser and a suitable implementation of 'show'. The code hasn't yet\nbeen tested for performance; it might be quite slow.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."iconv" or (buildDepError "iconv"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."syb-with-class" or (buildDepError "syb-with-class"))
          ];
        buildable = true;
        };
      };
    }