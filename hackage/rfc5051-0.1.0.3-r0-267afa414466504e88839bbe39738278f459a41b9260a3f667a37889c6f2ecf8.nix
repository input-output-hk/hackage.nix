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
    flags = { mkunicodedata = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "rfc5051"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2013 John MacFarlane";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "";
      url = "";
      synopsis = "Simple unicode collation as per RFC5051.";
      description = "This library implements @i;unicode-casemap@,\nthe simple, non locale-sensitive unicode collation\nalgorithm described in RFC 5051 (<http://www.rfc-editor.org/rfc/rfc5051.txt>).\nProper unicode collation can be done using text-icu, but that is a big\ndependency that depends on a large C library, and rfc5051 might be better\nfor some purposes.\n\nHere is a list of strings sorted by the Prelude's @sort@ function:\n\n@Abe Oeb abe ab&#233; oeb &#193;be &#196;be &#212;eb &#225;be &#228;be &#244;eb@\n\nHere is the same list sorted by @sortBy compareUnicode@:\n\n@Abe abe ab&#233; &#193;be &#225;be &#196;be &#228;be Oeb oeb &#212;eb &#244;eb@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "MkUnicodeData" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          buildable = if flags.mkunicodedata then true else false;
          };
        };
      };
    }