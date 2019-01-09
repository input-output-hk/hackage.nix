{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.6.0";
      identifier = { name = "yesod-auth"; version = "1.6.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman, Patrick Brisbin";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Authentication for Yesod.";
      description = "API docs and the README are available at <http://www.stackage.org/package/yesod-auth>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.authenticate)
          (hsPkgs.bytestring)
          (hsPkgs.yesod-core)
          (hsPkgs.wai)
          (hsPkgs.template-haskell)
          (hsPkgs.base16-bytestring)
          (hsPkgs.cryptonite)
          (hsPkgs.memory)
          (hsPkgs.random)
          (hsPkgs.text)
          (hsPkgs.mime-mail)
          (hsPkgs.yesod-persistent)
          (hsPkgs.shakespeare)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.yesod-form)
          (hsPkgs.transformers)
          (hsPkgs.persistent)
          (hsPkgs.persistent-template)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-conduit)
          (hsPkgs.aeson)
          (hsPkgs.unliftio)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.http-types)
          (hsPkgs.file-embed)
          (hsPkgs.email-validate)
          (hsPkgs.data-default)
          (hsPkgs.resourcet)
          (hsPkgs.safe)
          (hsPkgs.time)
          (hsPkgs.base64-bytestring)
          (hsPkgs.byteable)
          (hsPkgs.binary)
          (hsPkgs.http-client)
          (hsPkgs.blaze-builder)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.nonce)
          (hsPkgs.unliftio-core)
          (hsPkgs.unliftio)
          ] ++ (if flags.network-uri
          then [ (hsPkgs.network-uri) ]
          else [ (hsPkgs.network) ]);
        };
      };
    }