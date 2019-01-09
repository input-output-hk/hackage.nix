{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "musicbrainz-email"; version = "1.0.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "ollie@ocharles.org.uk";
      author = "Oliver Charles";
      homepage = "http://github.com/metabrainz/mass-mail";
      url = "";
      synopsis = "Send an email to all MusicBrainz editors";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.amqp)
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.mime-mail)
          (hsPkgs.optparse-applicative)
          (hsPkgs.text)
          ];
        };
      exes = {
        "musicbrainz-emailer" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.amqp)
            (hsPkgs.base)
            (hsPkgs.blaze-builder)
            (hsPkgs.errors)
            (hsPkgs.heist)
            (hsPkgs.HTTP)
            (hsPkgs.mime-mail)
            (hsPkgs.musicbrainz-email)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.network-metrics)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.xmlhtml)
            ];
          };
        "enqueue-mail" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.amqp)
            (hsPkgs.base)
            (hsPkgs.mime-mail)
            (hsPkgs.mtl)
            (hsPkgs.musicbrainz-email)
            (hsPkgs.optparse-applicative)
            (hsPkgs.postgresql-simple)
            (hsPkgs.transformers)
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.amqp)
            (hsPkgs.base)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.configurator)
            (hsPkgs.errors)
            (hsPkgs.heist)
            (hsPkgs.HUnit)
            (hsPkgs.HTTP)
            (hsPkgs.ghc-prim)
            (hsPkgs.mime-mail)
            (hsPkgs.mtl)
            (hsPkgs.musicbrainz-email)
            (hsPkgs.postgresql-simple)
            (hsPkgs.smallcheck)
            (hsPkgs.stm)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-smallcheck)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.xmlhtml)
            ];
          };
        };
      };
    }