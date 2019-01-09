{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "aws-dynamodb-streams"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "Copyright (c) 2013-2014 PivotCloud, Inc.";
      maintainer = "jon@jonmsterling.com";
      author = "Jon Sterling & Lars Kuhtz";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings for Amazon DynamoDB Streams";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.attoparsec)
          (hsPkgs.aeson)
          (hsPkgs.aws)
          (hsPkgs.aws-general)
          (hsPkgs.base16-bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.byteable)
          (hsPkgs.bytestring)
          (hsPkgs.cryptohash)
          (hsPkgs.containers)
          (hsPkgs.case-insensitive)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.http-types)
          (hsPkgs.http-conduit)
          (hsPkgs.old-locale)
          (hsPkgs.mtl)
          (hsPkgs.parsers)
          (hsPkgs.profunctors)
          (hsPkgs.resourcet)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.time)
          ];
        };
      };
    }