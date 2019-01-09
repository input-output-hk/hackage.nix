{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sproxy"; version = "0.9.4"; };
      license = "MIT";
      copyright = "2013-2016, Zalora South East Asia Pte. Ltd";
      maintainer = "Igor Pashev <pashev.igor@gmail.com>";
      author = "Chris Forno <jekor@jekor.com>";
      homepage = "";
      url = "";
      synopsis = "HTTP proxy for authenticating users via Google OAuth2";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sproxy" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.SHA)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.docopt)
            (hsPkgs.entropy)
            (hsPkgs.http-conduit)
            (hsPkgs.http-kit)
            (hsPkgs.http-types)
            (hsPkgs.interpolatedstring-perl6)
            (hsPkgs.logging-facade)
            (hsPkgs.logsink)
            (hsPkgs.network)
            (hsPkgs.postgresql-simple)
            (hsPkgs.raw-strings-qq)
            (hsPkgs.resource-pool)
            (hsPkgs.split)
            (hsPkgs.string-conversions)
            (hsPkgs.time)
            (hsPkgs.tls)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.x509)
            (hsPkgs.yaml)
            ];
          };
        };
      };
    }