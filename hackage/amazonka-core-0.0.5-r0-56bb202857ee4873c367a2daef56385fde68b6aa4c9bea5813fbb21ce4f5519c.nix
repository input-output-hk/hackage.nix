{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "amazonka-core";
        version = "0.0.5";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Core functionality, serialisation primitives, and data types for the Amazonka Amazon Web Services SDKs.";
      description = "Core functionality, serialisation primitives, and data types for\nAmazonka related Amazon Web Services SDKs.\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
      buildType = "Simple";
    };
    components = {
      "amazonka-core" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bifunctors)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.cryptohash)
          (hsPkgs.cryptohash-conduit)
          (hsPkgs.data-default-class)
          (hsPkgs.hashable)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.mmorph)
          (hsPkgs.mtl)
          (hsPkgs.nats)
          (hsPkgs.old-locale)
          (hsPkgs.resourcet)
          (hsPkgs.semigroups)
          (hsPkgs.tagged)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.xml-conduit)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.amazonka-core)
            (hsPkgs.base)
            (hsPkgs.old-locale)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
          ];
        };
      };
    };
  }