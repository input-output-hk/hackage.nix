{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "env-parser";
          version = "0.0.2.1";
        };
        license = "MIT";
        copyright = "2013 (c) Joseph Abrahamson";
        maintainer = "me@jspha.com";
        author = "Joseph Abrahamson";
        homepage = "http://github.com/tel/env-parser";
        url = "";
        synopsis = "Pull configuration information from the ENV";
        description = "@env-parser is a small library for configuring programs based on information\nfrom the environment. It's goals and design are similar to that of @cmdargs@\nor @optparse-applicative@ but aimed at automatically managed programs such as\nthose that might be run via Heroku or Runit/daemontools.\n\n@env-parser@ intentionally sacrifices power for comprehensibility---the\nprimary interface, @Parser@, implements only @Applicative@. This provides\nbetter runtime error messages and automatically generated static help using\nparser annotations. It also expresses a principle of simplicity in\nconfiguration: arbitrary uses of @Monad@ or even @Alternative@ can lead to\nopaque failures prior to a program even beginning to run.";
        buildType = "Simple";
      };
      components = {
        env-parser = {
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