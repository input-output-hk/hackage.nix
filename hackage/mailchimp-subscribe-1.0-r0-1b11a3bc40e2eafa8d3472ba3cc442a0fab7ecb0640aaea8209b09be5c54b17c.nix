{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.20";
      identifier = {
        name = "mailchimp-subscribe";
        version = "1.0";
      };
      license = "MIT";
      copyright = "Copyright © 2014 Miëtek Bak";
      maintainer = "Miëtek Bak <hello@mietek.io>";
      author = "Miëtek Bak <hello@mietek.io>";
      homepage = "https://github.com/mietek/mailchimp-subscribe/";
      url = "";
      synopsis = "MailChimp subscription request handler";
      description = "<http://mailchimp.com/ MailChimp> subscription request handler, built with <https://github.com/scotty-web/scotty/ Scotty>.  Intended to support custom signup forms.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mailchimp-subscribe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-types)
            (hsPkgs.reflection)
            (hsPkgs.scotty)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.wai-extra)
          ];
        };
      };
    };
  }