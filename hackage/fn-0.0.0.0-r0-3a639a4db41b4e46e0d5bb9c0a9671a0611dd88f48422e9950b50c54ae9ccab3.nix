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
      identifier = { name = "fn"; version = "0.0.0.0"; };
      license = "ISC";
      copyright = "2015 Daniel Patterson";
      maintainer = "dbp@dbpmail.net";
      author = "Daniel Patterson <dbp@dbpmail.net>";
      homepage = "http://github.com/dbp/fn#readme";
      url = "";
      synopsis = "A functional web framework.";
      description = "A Haskell web framework where web handlers are functions with parameters\nthat are typed arguments.\n\n>  &#123;-&#35; LANGUAGE OverloadedStrings &#35;-&#125;\n>  .\n>  import Data.Monoid ((<>))\n>  import Network.Wai (Request, defaultRequest)\n>  import Network.Wai.Handler.Warp (run)\n>  import Web.Fn\n>  .\n>  data Ctxt = Ctxt { req :: Request }\n>  instance RequestContext Ctxt where\n>    getRequest = req\n>    setRequest c r = c { req = r }\n>  .\n>  main :: IO ()\n>  main = do\n>  &#32;&#32;run 3000 \$ toWAI (Ctxt defaultRequest) \$ route\n>  &#32;&#32;&#32;&#32;[ end                        ==> indexH\n>  &#32;&#32;&#32;&#32;, path \"echo\" // param \"msg\" ==> echoH\n>  &#32;&#32;&#32;&#32;, path \"echo\" // segment     ==> echoH\n>  &#32;&#32;&#32;&#32;]\n>  .\n>  indexH :: Ctxt -> IO (Maybe Response)\n>  indexH _ = okText \"Try visiting /echo?msg='hello' or /echo/hello\"\n>  .\n>  echoH :: Ctxt -> Text -> IO (Maybe Response)\n>  echoH _ msg = okText \$ \"Echoing \\\"\" <> msg <> \"\\\".\"\n\nFn is a simple way to write web applications in Haskell where the code\nhandling web requests looks just like any Haskell code.\n\n* An application has some \"context\", which must contain a @Request@,\nbut can contain other data as well, like database connection pools, etc.\n\n* Routes are declared, which allow you to capture parameters and parts\nof the url and match them against handler functions of the appropriate\ntype.\n\n* All handlers take the context and the specified number and type of\nparameters.\n\n* Is a thin wrapper around the WAI interface, so anything you can do\nwith WAI, you can do with Fn.\n\nThe name comes from the fact that Fn emphasizes functions, and has no Fn\nmonad (necessary context, as well as parameters, are passed as arguments,\nand the return value, which is plain-old IO, specifies whether routing\nshould continue on).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ];
        };
      tests = {
        "fn-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fn" or (buildDepError "fn"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            ];
          };
        };
      };
    }