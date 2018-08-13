{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "nested-routes";
        version = "0.3";
      };
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
      "nested-routes" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.http-types)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.semigroups)
          (hsPkgs.constraints)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.blaze-html)
          (hsPkgs.lucid)
          (hsPkgs.bytestring)
          (hsPkgs.attoparsec)
          (hsPkgs.pred-trie)
          (hsPkgs.poly-arity)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
          ];
        };
      };
    };
  }