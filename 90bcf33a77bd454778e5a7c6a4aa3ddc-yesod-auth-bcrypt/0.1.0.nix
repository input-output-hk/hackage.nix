{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6.0";
        identifier = {
          name = "yesod-auth-bcrypt";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Oliver Hunt <oliver.huntuk@gmail.com>";
        author = "Oliver Hunt";
        homepage = "http://www.yesodweb.com/";
        url = "";
        synopsis = "BCrypt salted and hashed passwords in a database as auth for yesod";
        description = "BCrypt salted and hashed passwords in a database as auth for yesod";
        buildType = "Simple";
      };
      components = {
        "yesod-auth-bcrypt" = {
          depends  = [
            hsPkgs.base
            hsPkgs.authenticate
            hsPkgs.bytestring
            hsPkgs.yesod-core
            hsPkgs.wai
            hsPkgs.template-haskell
            hsPkgs.pureMD5
            hsPkgs.random
            hsPkgs.text
            hsPkgs.mime-mail
            hsPkgs.yesod-persistent
            hsPkgs.hamlet
            hsPkgs.shakespeare-css
            hsPkgs.shakespeare-js
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.yesod-form
            hsPkgs.transformers
            hsPkgs.persistent
            hsPkgs.persistent-template
            hsPkgs.http-conduit
            hsPkgs.aeson
            hsPkgs.pwstore-fast
            hsPkgs.lifted-base
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
            hsPkgs.network
            hsPkgs.http-types
            hsPkgs.file-embed
            hsPkgs.email-validate
            hsPkgs.data-default
            hsPkgs.resourcet
            hsPkgs.safe
            hsPkgs.time
            hsPkgs.yesod-auth
            hsPkgs.bcrypt
          ];
        };
      };
    }