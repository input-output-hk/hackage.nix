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
      identifier = { name = "nested-routes"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Declarative, compositional Wai responses";
      description = "A method to writing Wai responses\n\nThis library attempts to make it easier to write nice Wai response handlers\nby giving us a Sinatra/\n<https://hackage.haskell.org/package/scotty Scotty>-like syntax for declaring HTTP-verb oriented\nroutes, in addition to file-extension handling and rose-tree like composition.\nNot only do we have literal route specification, like\n<https://hackage.haskell.org/package/scotty Scotty> &\n<https://hackage.haskell.org/package/spock Spock>, but we\ncan also embed\n<https://hackage.haskell.org/package/attoparsec Attoparsec>\nparsers /directly/ in our routes, with our handlers\nreflecting their results. As an example:\n\n> router :: Application\n> router = route handlers\n>   where\n>     handlers = do\n>       handleLit o\n>         (Left \$ get \$ text \"home\")\n>         Nothing\n>       handleLit (l \"foo\" </> l \"bar\" </> o)\n>         (Left \$ get \$ text \"foobar\") \$ Just \$\n>         handleParse (p (\"baz\",double) </> o)\n>           (\\d -> Right \$ get \$ textOnly \$ LT.pack (show d) `LT.append` \" bazs\")\n>           Nothing\n>       handleParse (p (\"num\",double) </> o)\n>         (\\d -> Right \$ get \$ textOnly \$ LT.pack \$ show d) \$ Just \$\n>         handleLit (l \"bar\" </> o)\n>            (\\d -> Left \$ get \$ text \$ (LT.pack \$ show d) `LT.append` \" bars\")\n>            Nothing\n\nThe route specification syntax is a little strange right now - @l@ specifies\na \"literal chunk\" of a handlable url (ie - @l \\\"foo\\\" \\<\\/\\> l \\\"bar\\\" \\<\\/\\> o@ would\nrepresent the url @\\/foo\\/bar@), while @p@ represents a \"parsable\" url chunk,\nwhich expects a pair - the left element being merely a reference name for the\nparser during internal plumbing, and the right being the actual @Parser@. @o@ represents\nthe end of a url string, and can be used alone in a handler to capture requests\nto the root path.\n\nEach route being handled needs some kind of content - that's where the @Either@\nstuff comes in to play. For every parsed url chunk, the route expects a function\nof arity matching 1-for-1 with the parsed contents. For example, @\\d -> ...@ in the\ndemonstration above is such a function, where @d :: Double@.\n\nWe use the @Either@ for a subtle reason - literal url strings may have a file\nextension, while url strings ending with a parser would not. @get@, @post@, etc.\nare all monadic expressions, accumulating a @Map@ for HTTP verbs, likewise with\n@text@, @lucid@, @json@, @bytestring@ etc., where they may also match a particular\nfile extension. @textOnly@ and the other @-Only@ variants are not monadic, and\nsimply give us a convenient unwrapper. Basically, url paths ending with a literal\nchunk are @Left@ and contain a @VerbListenerT z (FileExtListenerT Response m ()) m ()@,\nwhile paths ending with a parser are @Right@ and contain @VerbListenerT z Response m ()@.\n\nWhen we test our application:\n\n>  λ> curl localhost:3000/\n>  ↪ \"home\"\n\nrequests may end with index\n\n>  λ> curl localhost:3000/index\n>  ↪ \"home\"\n\nand specify the file extension\n\n>  λ> curl localhost:3000/index.txt\n>  ↪ \"home\"\n\neach responding with the \"closest\" available file type\n\n>  λ> curl localhost:3000/index.html\n>  ↪ \"home\"\n\n>  λ> curl localhost:3000/foo/bar\n>  ↪ \"foobar\"\n\n>  λ> curl localhost:3000/foo/bar.txt\n>  ↪ \"foobar\"\n\n>  λ> curl localhost:3000/foo/bar/5678.5678\n>  ↪ \"5678.5678 bazs\"\n\n>  λ> curl localhost:3000/1234.1234\n>  ↪ \"1234.1234\"\n\n>  λ> curl localhost:3000/2e5\n>  ↪ \"200000.0\"\n\n>  λ> curl localhost:3000/1234.1234/bar\n>  ↪ \"1234.1234 bars\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."lucid" or (buildDepError "lucid"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."pred-trie" or (buildDepError "pred-trie"))
          (hsPkgs."poly-arity" or (buildDepError "poly-arity"))
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            ];
          };
        };
      };
    }