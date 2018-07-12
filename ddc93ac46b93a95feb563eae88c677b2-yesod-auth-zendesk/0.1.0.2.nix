{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yesod-auth-zendesk";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
        author = "Felipe Lessa";
        homepage = "https://github.com/meteficha/yesod-auth-zendesk";
        url = "";
        synopsis = "Zendesk remote authentication support for Yesod apps.";
        description = "This package allows users of your website to login into Zendesk\nautomatically using Zendesk's remote authentication\n(<http://www.zendesk.com/support/api/remote-authentication>).\n\nNote that this is an unusual @yesod-auth-*@ package.  We do not\ndefine an @AuthPlugin@ because the user can't log in to your\nwebsite via Zendesk (it's the opposite, they login in Zendesk\nvia your website).  Instead, this plugin defines an Yesod\nsubsite that you may include on your site; the subsite defines\na route that accepts incoming users from Zendesk and\nauthenticates them.";
        buildType = "Simple";
      };
      components = {
        "yesod-auth-zendesk" = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.data-default
            hsPkgs.template-haskell
            hsPkgs.cryptohash
            hsPkgs.base16-bytestring
            hsPkgs.http-types
            hsPkgs.yesod-core
            hsPkgs.yesod-auth
            hsPkgs.wai
            hsPkgs.http-conduit
            hsPkgs.transformers
          ];
        };
      };
    }