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
      identifier = { name = "urlpath"; version = "0.0.5"; };
      license = "MIT";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Painfully simple URL writing combinators";
      description = "Simple URL DSL for Haskell.\n\nUse raw combinators (kinda useless) ...\n\n>  render \$ \"foo.php\" <?> (\"key1\",\"bar\") <&> (\"key2\",\"baz\")\n>\n>  ↪ \"foo.php?key1=bar&key2=baz\"\n\n... or use the MonadReader instance for a configurable root ...\n\n>  let url = runReader \$ expandAbsolute \$ \"foo.php\" <?> (\"key1\",\"bar\") <&> (\"key2\",\"baz\")\n>  url \"example.com\"\n>\n>  ↪ \"example.com/foo.php?key1=bar&key2=baz\"\n\n... in Lucid ...\n\n>  (runReader \$ renderTextT \$\n>    (\\a -> do\n>      foo <- lift \$ expandAbsolute a\n>      script_ [src_ foo] \"\" )\n>    (\"foo\" <?> (\"bar\",\"baz\"))\n>  ) \"example.com\"\n>\n>  ↪ \"<script src=\\\"example.com/foo?bar=baz\\\"></script>\"\n\n... and in Scotty ...\n\n>  main :: IO ()\n>  main = scottyT 3000\n>      rootConf\n>      rootConf\n>      run\n>\n>    where\n>      rootConf = flip runReaderT \"http://example.com\"\n>\n>      run :: ( MonadIO m\n>             , MonadReader T.Text m ) =>\n>             ScottyT LT.Text m ()\n>      run = get \"/\" \$ do\n>        path <- lift \$ expandAbsolute \$ \"foo\" <?> (\"bar\",\"baz\")\n>        text \$ LT.fromStrict path\n>\n>  λ> curl localhost:3000/\n>  ↪ \"http://example.com/foo?bar=baz\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }