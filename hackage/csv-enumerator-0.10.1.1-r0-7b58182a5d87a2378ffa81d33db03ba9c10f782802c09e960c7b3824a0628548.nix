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
      identifier = { name = "csv-enumerator"; version = "0.10.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ozgun Ataman <ozataman@gmail.com>";
      author = "Ozgun Ataman";
      homepage = "http://github.com/ozataman/csv-enumerator";
      url = "";
      synopsis = "A flexible, fast, enumerator-based CSV parser library for Haskell.";
      description = "CSV files are the de-facto standard in many situations involving data transfer,\nparticularly when dealing with enterprise application or disparate database\nsystems.\n\nWhile there are a number of CSV libraries in Haskell, at the time of this\nproject's start in 2010, there wasn't one that provided all of the following:\n\n* Full flexibility in quote characters, separators, input/output\n\n* Constant space operation\n\n* Robust parsing, correctness and error resiliency\n\n* Convenient interface that supports a variety of use cases\n\n* Fast operation\n\nThis library is an attempt to close these gaps.\n\nFor more documentation and examples, check out the README at:\n\n<http://github.com/ozataman/csv-enumerator>\n\nThe API is fairly well documented and I would encourage you to keep your\nhaddocks handy. If you run into problems, just email me or holler over at\n#haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."attoparsec-enumerator" or (buildDepError "attoparsec-enumerator"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."enumerator" or (buildDepError "enumerator"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
          ];
        buildable = true;
        };
      };
    }