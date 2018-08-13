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
        name = "urlpath";
        version = "0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Painfully simple URL writing combinators";
      description = "Simple URL DSL for Haskell.\n\nThis library tries to make it easier for people to write Url strings,\nstructurally. Packages like <https://hackage.haskell.org/package/yesod-routes Yesod Routes>\ndo a wonderful job at implementing string-free routing and\nreferences, but sometimes we have to compromise. This tries to make that\ncompromise less painful.\n\nUse bare combinators to render your strings (kinda useless):\n\n>  expandRelative \$ \"foo.php\" <?> (\"key1\",\"bar\") <&> (\"key2\",\"baz\")\n>\n>  ↪ \"foo.php?key1=bar&key2=baz\"\n\n... or use the MonadReader instance for a configurable host:\n\n>  let path = runAbsoluteUrl \$ url \$ \"foo.php\" <?> (\"key1\",\"bar\") <&> (\"key2\",\"baz\")\n>  path \"example.com\"\n>\n>  ↪ \"example.com/foo.php?key1=bar&key2=baz\"\n\n@url@ puts the @UrlString@ in a MonadReader that we can use for applying our\nhost. We use different monads for different deployment schemes (currently we\nhave 3 - @RelativeUrl@, @GroundedUrl@, and @AbsoluteUrl@), which we can\nintegrate in different libraries, like Lucid:\n\n>  (runAbsoluteUrl \$ renderTextT \$ do\n>      foo <- lift \$ url \$ \"foo\" <?> (\"bar\",\"baz\")\n>      script_ [src_ foo] \"\" )\n>  ) \"example.com\"\n>\n>  ↪ \"<script src=\\\"example.com/foo?bar=baz\\\"></script>\"\n\n... and in Scotty ...\n\n>  main :: IO ()\n>  main = scottyT 3000\n>      rootConf\n>      rootConf\n>      run\n>\n>    where\n>      rootConf = flip runAbsoluteT \"http://example.com\"\n>\n>      run :: ( MonadIO m\n>             , MonadReader T.Text m\n>             , Url T.Text m ) =>\n>             ScottyT LT.Text m ()\n>      run = get \"/\" \$ do\n>        path <- lift \$ url \$ \"foo\" <?> (\"bar\",\"baz\")\n>        text \$ LT.fromStrict path\n>\n>  λ> curl localhost:3000/\n>  ↪ \"http://example.com/foo?bar=baz\"\n\nNote that in the scotty example, we don't use one of our deployment schemes -\nthis is because the @scottyT@ function expects it's underlying monad to be an\ninstance of @MonadIO@, which we can only instantiate in our monad transformers.\n\nPlease take mind - the string type underlying the Url rendering is generalized\nto @Data.String.IsString@ for convenient use with @-XOverloadedStrings@. However,\ndue to that generality, we need to specify the monomorphic type (like\n@Data.Text.Text@ above).";
      buildType = "Simple";
    };
    components = {
      "urlpath" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }