{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aws-dynamodb-conduit";
          version = "0.1.0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "srijs@airpost.net";
        author = "Sam Rijs";
        homepage = "https://github.com/srijs/haskell-aws-dynamodb-query";
        url = "";
        synopsis = "Conduit-based interface for AWS DynamoDB";
        description = "";
        buildType = "Simple";
      };
      components = {
        aws-dynamodb-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.resourcet
            hsPkgs.conduit
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.aws
            hsPkgs.aeson
            hsPkgs.json-togo
            hsPkgs.attoparsec-trans
          ];
        };
      };
    }