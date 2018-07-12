{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "credentials-cli";
          version = "0.0.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2015-2016 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/credentials";
        url = "";
        synopsis = "Secure Credentials Administration";
        description = "@credentials@ is a console application used to administer secure credentials\nvia the <http://hackage.haskell.org/package/credentials credentials> library of the same name.\n\nYou can read more about use-cases and prerequisites <https://github.com/brendanhay/credentials here>.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "credentials" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.amazonka
              hsPkgs.amazonka-core
              hsPkgs.amazonka-dynamodb
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.cryptonite
              hsPkgs.credentials
              hsPkgs.exceptions
              hsPkgs.lens
              hsPkgs.mmorph
              hsPkgs.mtl
              hsPkgs.optparse-applicative
              hsPkgs.resourcet
              hsPkgs.text
              hsPkgs.transformers-base
              hsPkgs.unordered-containers
              hsPkgs.uri-bytestring
            ];
          };
        };
      };
    }