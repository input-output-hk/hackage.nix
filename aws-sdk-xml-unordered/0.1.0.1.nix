{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aws-sdk-xml-unordered";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Shohei Yasutake <amutake.s@gmail.com>";
        author = "Shohei Yasutake <amutake.s@gmail.com>";
        homepage = "https://github.com/worksap-ate/aws-sdk-xml-unordered";
        url = "";
        synopsis = "The xml parser for aws-sdk";
        description = "This package provides the unordered xml parser for aws-sdk.";
        buildType = "Simple";
      };
      components = {
        aws-sdk-xml-unordered = {
          depends  = [
            hsPkgs.base
            hsPkgs.unordered-containers
            hsPkgs.conduit
            hsPkgs.xml-conduit
            hsPkgs.xml-types
            hsPkgs.text
            hsPkgs.mtl
            hsPkgs.aws-sdk-text-converter
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.conduit
              hsPkgs.xml-conduit
              hsPkgs.aws-sdk-xml-unordered
              hsPkgs.hspec
            ];
          };
        };
      };
    }