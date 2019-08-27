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
    flags = { monadlogger = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "apiary"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "philopon.dependence@gmail.com";
      author = "HirotomoMoriwaki";
      homepage = "";
      url = "";
      synopsis = "Simple web framework inspired by scotty.";
      description = "Simple web framework inspired by scotty.\n\n@\n&#123;-# LANGUAGE QuasiQuotes #-&#125;\n&#123;-# LANGUAGE OverloadedStrings #-&#125;\n\nimport Web.Apiary\nimport Network.Wai.Handler.Warp\nimport qualified Data.ByteString.Lazy.Char8 as L\n\nmain :: IO ()\nmain = run 3000 . runApiaryT def \$ do\n&#32;&#32;[capture|/:String|] \$ do\n&#32;&#32;&#32;&#32;stdMethod GET . action \$ \\\\name -> do\n&#32;&#32;&#32;&#32;&#32;&#32;contentType \"text/html\"\n&#32;&#32;&#32;&#32;&#32;&#32;lbs . L.concat \$ [\"&#60;h1&#62;Hello, \", L.pack name, \"!&#60;/h1&#62;\"]\n@\n\n* Nestable route handling(ApiaryT Monad; capture, stdMethod and more.).\n* type safe path capture.\n\nfull example & tutorial: <https://github.com/philopon/apiary/blob/master/examples/main.lhs>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."mmorph" or (buildDepError "mmorph"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."mime-types" or (buildDepError "mime-types"))
          (hsPkgs."wai" or (buildDepError "wai"))
          ] ++ (pkgs.lib).optional (flags.monadlogger) (hsPkgs."monad-logger" or (buildDepError "monad-logger"));
        };
      };
    }