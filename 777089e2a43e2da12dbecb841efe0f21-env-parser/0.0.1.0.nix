{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "env-parser";
          version = "0.0.1.0";
        };
        license = "MIT";
        copyright = "2013 (c) Joseph Abrahamson";
        maintainer = "me@jspha.com";
        author = "Joseph Abrahamson";
        homepage = "http://github.com/tel/env-parser";
        url = "";
        synopsis = "Pull configuration information from the ENV";
        description = "@env-parser@ is a small library for configuring programs based on information\nfrom the environment.\n\nCommand-line oriented programs tend to pull much of their runtime\nconfiguration from command-line arguments and libraries such as @cmdargs@ are\nuseful for encoding this configuration in your program. For programs which\ndraw configuration from the environment, however, this must usually be done\nmanually.\n\n@env-parser@ focuses on making ENV-configured programs both easy to build,\ndeclarative, self-documenting, and easy to test.\n\nA particular use case of this parser is to make it easy to build applications\nwhich launch under Heroku-style infrastructure. We provide explicit parsers\nfor some of Heroku's conventions for this purpose.";
        buildType = "Simple";
      };
      components = {
        "env-parser" = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.old-locale
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.aeson
            hsPkgs.base16-bytestring
            hsPkgs.base64-bytestring
            hsPkgs.http-types
          ];
        };
      };
    }