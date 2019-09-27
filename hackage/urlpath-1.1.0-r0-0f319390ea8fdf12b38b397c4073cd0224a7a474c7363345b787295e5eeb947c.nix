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
      identifier = { name = "urlpath"; version = "1.1.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."monoid-subclasses" or (buildDepError "monoid-subclasses"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."monoid-subclasses" or (buildDepError "monoid-subclasses"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."urlpath" or (buildDepError "urlpath"))
            ];
          buildable = true;
          };
        };
      };
    }