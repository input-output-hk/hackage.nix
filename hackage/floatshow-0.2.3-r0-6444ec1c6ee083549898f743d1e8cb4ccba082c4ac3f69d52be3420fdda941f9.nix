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
    flags = { gmp = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "floatshow"; version = "0.2.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Daniel Fischer";
      maintainer = "daniel.is.fischer@googlemail.com";
      author = "Daniel Fischer";
      homepage = "https://bitbucket.org/dafis/floatshow";
      url = "";
      synopsis = "Alternative faster String representations for Double and Float,\nString representations for more general numeric types.";
      description = "The String representations provided by this package\nare generally longer than show's output, which constructs\nthe shortest string that is parsed as the original\nnumber by read. This requires some time-consuming checks,\nso show is slow for floating-point numbers. By producing\na digit-string guaranteed to be long enough to uniquely\ndetermine the number without caring whether there's a\nshorter representation, the display functions of this\npackage can be faster, sometimes by a big margin.\nText.FShow.Raw provides building blocks for representations\nof numeric types which don't belong to RealFloat but have\nsome of its functionality.\nThe bulk of the code is a minor modification of code from\nthe base package, whence the GHC License is included as\nan extra-source-file.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          ] ++ (if flags.gmp
          then [ (hsPkgs."integer-gmp" or (buildDepError "integer-gmp")) ]
          else [
            (hsPkgs."integer-simple" or (buildDepError "integer-simple"))
            ]);
        buildable = true;
        };
      };
    }