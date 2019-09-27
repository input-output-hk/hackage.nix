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
      specVersion = "1.8";
      identifier = { name = "hails"; version = "0.9.0.1"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Hails team <hails at scs dot stanford dot edu>";
      author = "Hails team";
      homepage = "";
      url = "";
      synopsis = "Multi-app web platform framework";
      description = "The rise of web platforms and their associated /apps/ represents a\nnew way of developing and deploying software.  Sites such as\nFacebook and Yammer are no longer written by a single entity, but\nrather are freely extended by third-party developers offering\ncompeting features to users.\n\nAllowing an app to access more user data allows developers to build\nmore compelling products. It also opens the door to accidental or\nmalicious breaches of user privacy. In the case of a website like\nFacebook, exposing access to a user's private messages would allow\nan external developer to build a search feature. Exciting!  But,\nanother developer can take advantage of this feature to build an app\nthat mines private messages for credit card numbers, ad keywords, or\nother sensitive data.\n\nFrameworks such as Ruby on Rails, Django, Yesod, etc. are geared\ntowards building monolithic web sites. And, they are great for\nthis! However, they are not designed for websites that integrate\nthird-party code, and thus lack a good mechanism for building such\nmulti-app platforms without sacrificing a user's security or an\napp's functionality.\n\nHails is explicitly designed for building web /platforms/, where it\nis expected that a site will comprise many mutually-distrustful\ncomponents written by a variety of entities.  We built Hails around\ntwo core design principles.\n\n* Separation of policy:\nData access policies should be concisely specified alongside data\nstructures and schemas, rather than strewn throughout the\ncodebase in a series of conditionals. Code that implements this\nis called a /policy module/ in Hails (see \"Hails.PolicyModule\").\n\n* Mandatory access control (MAC):\nData access policies should be mandatory even once code has\nobtained access to data.  MAC lets platform components modules\nproductively interact by sharing data, despite mutual distrust.\nHaskell lets us implement MAC at a fine grained level using the\ninformation flow control library \"LIO\".\n\nA Hails platform hosts two types of code: /apps/ and /policy\nmodules/. Apps encompass what would traditionally be considered\ncontroller and view logic. Policy modules are libraries that\nimplement both the model and the data security policy. They are\ninvoked directly by apps or other policy modules, but run with\ndifferent privileges from the invoking code. Both apps and policy\nmodules can be implemented by untrusted third parties, with the user\nonly needing to trust the policy module governing the data in\nquestion. Separating of policy code from app code allows users to\ninspect and more easily unserstand the overall security provided by\nthe system, while MAC guarantees that these policies are enforced\nin an end-to-end fashion.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."lio" or (buildDepError "lio"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."bson" or (buildDepError "bson"))
          (hsPkgs."mongoDB" or (buildDepError "mongoDB"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."wai-app-static" or (buildDepError "wai-app-static"))
          (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."authenticate" or (buildDepError "authenticate"))
          (hsPkgs."cookie" or (buildDepError "cookie"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."failure" or (buildDepError "failure"))
          ];
        buildable = true;
        };
      exes = {
        "hails" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."lio" or (buildDepError "lio"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."bson" or (buildDepError "bson"))
            (hsPkgs."mongoDB" or (buildDepError "mongoDB"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."wai-app-static" or (buildDepError "wai-app-static"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."authenticate" or (buildDepError "authenticate"))
            (hsPkgs."cookie" or (buildDepError "cookie"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."hails" or (buildDepError "hails"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."hails" or (buildDepError "hails"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."lio" or (buildDepError "lio"))
            (hsPkgs."quickcheck-lio-instances" or (buildDepError "quickcheck-lio-instances"))
            (hsPkgs."bson" or (buildDepError "bson"))
            (hsPkgs."mongoDB" or (buildDepError "mongoDB"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-test" or (buildDepError "wai-test"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            ];
          buildable = true;
          };
        };
      };
    }