{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hails";
          version = "0.11.0.0";
        };
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
        hails = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.parsec
            hsPkgs.binary
            hsPkgs.time
            hsPkgs.lio
            hsPkgs.base64-bytestring
            hsPkgs.bson
            hsPkgs.mongoDB
            hsPkgs.network
            hsPkgs.conduit
            hsPkgs.resourcet
            hsPkgs.http-conduit
            hsPkgs.wai
            hsPkgs.wai-app-static
            hsPkgs.wai-extra
            hsPkgs.http-types
            hsPkgs.authenticate
            hsPkgs.cookie
            hsPkgs.blaze-builder
            hsPkgs.failure
            hsPkgs.SHA
          ];
        };
        exes = {
          hails = {
            depends  = [
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.parsec
              hsPkgs.binary
              hsPkgs.time
              hsPkgs.lio
              hsPkgs.base64-bytestring
              hsPkgs.bson
              hsPkgs.mongoDB
              hsPkgs.network
              hsPkgs.conduit
              hsPkgs.resourcet
              hsPkgs.http-conduit
              hsPkgs.wai
              hsPkgs.wai-extra
              hsPkgs.wai-app-static
              hsPkgs.warp
              hsPkgs.http-types
              hsPkgs.authenticate
              hsPkgs.cookie
              hsPkgs.blaze-builder
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.unix
              hsPkgs.ghc-paths
              hsPkgs.SHA
              hsPkgs.hails
            ];
          };
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.hails
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.unix
              hsPkgs.time
              hsPkgs.text
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.quickcheck-instances
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.lio
              hsPkgs.quickcheck-lio-instances
              hsPkgs.bson
              hsPkgs.mongoDB
              hsPkgs.wai
              hsPkgs.wai-test
              hsPkgs.http-types
            ];
          };
        };
      };
    }