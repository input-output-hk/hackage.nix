{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "ucam-webauth"; version = "0.1.0.0"; };
      license = "(BSD-3-Clause OR Apache-2.0)";
      copyright = "2018 David Baynard";
      maintainer = "David Baynard <ucamwebauth@baynard.me>";
      author = "David Baynard <ucamwebauth@baynard.me>";
      homepage = "https://github.com/dbaynard/UcamWebauth#readme";
      url = "";
      synopsis = "The Ucam-Webauth protocol, used by Raven";
      description = "An implementation of the Ucam-Webauth protocol, as used by the University of Cambridge’s\nRaven authentication service.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.errors)
          (hsPkgs.http-api-data)
          (hsPkgs.http-types)
          (hsPkgs.microlens)
          (hsPkgs.microlens-mtl)
          (hsPkgs.mtl)
          (hsPkgs.parser-combinators)
          (hsPkgs.pem)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.ucam-webauth-types)
          (hsPkgs.x509)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.cryptonite)
            (hsPkgs.errors)
            (hsPkgs.generic-random)
            (hsPkgs.here)
            (hsPkgs.hspec)
            (hsPkgs.http-api-data)
            (hsPkgs.http-types)
            (hsPkgs.microlens)
            (hsPkgs.microlens-mtl)
            (hsPkgs.mtl)
            (hsPkgs.parser-combinators)
            (hsPkgs.pem)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.time-qq)
            (hsPkgs.ucam-webauth-types)
            (hsPkgs.x509)
            ];
          build-tools = [ ((hsPkgs.buildPackages).hspec-discover) ];
          };
        };
      };
    }