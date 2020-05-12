{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hails"; version = "0.9.2.1"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."lio" or (errorHandler.buildDepError "lio"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."bson" or (errorHandler.buildDepError "bson"))
          (hsPkgs."mongoDB" or (errorHandler.buildDepError "mongoDB"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-app-static" or (errorHandler.buildDepError "wai-app-static"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."authenticate" or (errorHandler.buildDepError "authenticate"))
          (hsPkgs."cookie" or (errorHandler.buildDepError "cookie"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."failure" or (errorHandler.buildDepError "failure"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          ];
        buildable = true;
        };
      exes = {
        "hails" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."lio" or (errorHandler.buildDepError "lio"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."bson" or (errorHandler.buildDepError "bson"))
            (hsPkgs."mongoDB" or (errorHandler.buildDepError "mongoDB"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."wai-app-static" or (errorHandler.buildDepError "wai-app-static"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."authenticate" or (errorHandler.buildDepError "authenticate"))
            (hsPkgs."cookie" or (errorHandler.buildDepError "cookie"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            (hsPkgs."hails" or (errorHandler.buildDepError "hails"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."hails" or (errorHandler.buildDepError "hails"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."lio" or (errorHandler.buildDepError "lio"))
            (hsPkgs."quickcheck-lio-instances" or (errorHandler.buildDepError "quickcheck-lio-instances"))
            (hsPkgs."bson" or (errorHandler.buildDepError "bson"))
            (hsPkgs."mongoDB" or (errorHandler.buildDepError "mongoDB"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-test" or (errorHandler.buildDepError "wai-test"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            ];
          buildable = true;
          };
        };
      };
    }