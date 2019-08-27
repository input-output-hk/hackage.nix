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
      specVersion = "1.24";
      identifier = { name = "relude"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2016 Stephen Diehl, 2016-2018 Serokell, 2018 Kowainik";
      maintainer = "Kowainik <xrom.xkov@gmail.com>";
      author = "Stephen Diehl, @serokell, Kowainik";
      homepage = "https://github.com/kowainik/relude";
      url = "";
      synopsis = "Custom prelude from Kowainik";
      description = "== Goals\n\n* __Avoid all [partial functions](https://www.reddit.com/r/haskell/comments/5n51u3/why_are_partial_functions_as_in_head_tail_bad/)__\n(like @head :: [a] -> a@). The types of partial functions lie about their\nbehavior and usage of such functions can lead to the unexpected bugs. Though\nyou can still use some unsafe functions from @Relude.Unsafe@ module, but they\nare not exported by default.\n\n* __Type-safety__. We like to make invalid states unrepresantable. And if it's\npossible to express this concept through the types then we will do it.\n/Example:/ @ whenNotNull :: Applicative f => [a] -> (NonEmpty a -> f ()) -> f () @\n\n* __Performance.__ Prefer @Text@ over @[String](https://www.reddit.com/r/haskell/comments/29jw0s/whats_wrong_with_string/)@,\nuse spaceleak-free functions (like our custom @sum@ and @product@).\n\n* __Minimalism__ (low number of dependencies). We don't force users of @relude@ to\nstick to some specific lens or text formatting or logging library.\n\n* __Convenience__ (like lifted to @MonadIO@ functions, more reexports). But we\nwant to bring common types and functions (like @containers@ and @bytestrng@)\ninto scope because they are used in almost every application anyways.\n\n* __Provide excellent documentation.__\n\n1. Tutorial\n\n2. Migration guide from @Prelude@\n\n3. Haddock with examples for (almost) every function\n(all examples are tested with [`doctest`](http://hackage.haskell.org/package/doctest))\n\n4. Documentation regarding [internal module structure]((http://hackage.haskell.org/package/relude/docs/Relude.html))\n\n5. @relude@-specific [HLint](http://hackage.haskell.org/package/hlint) rules: @[.hlint.yaml](https://github.com/kowainik/relude/blob/master/.hlint.yaml)@\n\n* __User-friendliness.__ Ability to quickly migrate to @relude@ if you're familiar\nwith the common libraries like @text@ and @containers@.\n\n* __Exploration.__ Experiment with new ideas and proposals without introducing\nbreaking changes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          ];
        };
      tests = {
        "relude-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."relude" or (buildDepError "relude"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (buildDepError "tasty-hedgehog"))
            ];
          };
        "relude-doctest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            ];
          };
        };
      benchmarks = {
        "relude-benchmark" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."relude" or (buildDepError "relude"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."gauge" or (buildDepError "gauge"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).eq "7.10.3") (hsPkgs."semigroups" or (buildDepError "semigroups"));
          };
        };
      };
    }