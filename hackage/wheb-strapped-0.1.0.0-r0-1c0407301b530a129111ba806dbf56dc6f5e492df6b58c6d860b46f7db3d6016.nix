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
      identifier = { name = "wheb-strapped"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@khanson.io";
      author = "Kyle";
      homepage = "https://github.com/hansonkd/Wheb-Framework";
      url = "";
      synopsis = "Strapped templates for Wheb";
      description = "Implements basic functionality for:\n\n* <http://hackage.haskell.org/package/StrappedTemplates StrappedTemplates>\n\n* <http://hackage.haskell.org/package/Wheb Wheb>\n\n/In action:/\n\nUse with language extensions /OverloadedStrings/, /FlexibleInstances/, /MultiParamTypeClasses/\n\n>  import           Control.Monad.Except\n>\n>  import           Web.Wheb\n>  import           Web.Wheb.Plugins.Strapped\n>  import           Text.Strapped\n>\n>  type MyApp = WhebT MyGlobalCtx () IO\n>\n>  data MyGlobalCtx = MyGlobalCtx (StrappedContainer MyApp)\n>\n>  instance StrappedApp MyGlobalCtx MyApp where\n>      getStrappedContainer (MyGlobalCtx g) = g\n>\n>  main :: IO ()\n>  main = do\n>   opts <- generateOptions \$ do\n>     sc <- initStrapped \"examples/resources\" \".html\"\n>     addGET \".\" rootPat \$ renderTemplate \"index.html\" (emptyBucket)\n>     return (MyGlobalCtx sc, ())\n>   runWhebServer opts";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."Wheb" or (buildDepError "Wheb"))
          (hsPkgs."StrappedTemplates" or (buildDepError "StrappedTemplates"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        };
      };
    }