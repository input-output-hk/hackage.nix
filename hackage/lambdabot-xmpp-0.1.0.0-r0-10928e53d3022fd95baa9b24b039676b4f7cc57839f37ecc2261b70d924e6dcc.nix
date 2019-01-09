{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lambdabot-xmpp"; version = "0.1.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "zl29ah@gmail.com";
      author = "Adam Flott, Sergey Alirzaev";
      homepage = "";
      url = "";
      synopsis = "Lambdabot plugin for XMPP (Jabber) protocol";
      description = "Usage: cabal build && .\\/dist\\/build\\/lambdabot\\/lambdabot -e 'xmpp-connect asdfasdf example.com 5222 username nick password haskell@conference.example.com'";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lambdabot" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.pontarius-xmpp)
            (hsPkgs.lambdabot-core)
            (hsPkgs.lambdabot-haskell-plugins)
            (hsPkgs.lambdabot-irc-plugins)
            (hsPkgs.lambdabot-misc-plugins)
            (hsPkgs.lambdabot-novelty-plugins)
            (hsPkgs.lambdabot-reference-plugins)
            (hsPkgs.lambdabot-social-plugins)
            (hsPkgs.data-default)
            (hsPkgs.split)
            (hsPkgs.lifted-base)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.text)
            (hsPkgs.tls)
            (hsPkgs.x509-validation)
            (hsPkgs.xml-types)
            ];
          };
        };
      };
    }