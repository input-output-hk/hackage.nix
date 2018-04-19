{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gli";
          version = "0.0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Mrinmoy Das";
        maintainer = "mrinmoy.das91@gmail.com";
        author = "goromlagche";
        homepage = "https://github.com/goromlagche/gli#readme";
        url = "";
        synopsis = "Tiny cli to fetch PR info from gitlab";
        description = "A cli tool to fetch PR(pull request/merge request) related informations from gitlab. When someone runs this tool from inside a gitlab repository, it will list out open merge requests informations containing url, title, description, author, assignee, whether it has a WIP tag or not, status, branch name and both created_at, updated_at fields";
        buildType = "Simple";
      };
      components = {
        gli = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.time
            hsPkgs.friendly-time
            hsPkgs.http-client
            hsPkgs.http-conduit
            hsPkgs.http-client-tls
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.optparse-applicative
            hsPkgs.process
            hsPkgs.network-uri
            hsPkgs.yaml
          ];
        };
        exes = {
          gli = {
            depends  = [
              hsPkgs.base
              hsPkgs.gli
            ];
          };
        };
        tests = {
          gli-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.gli
            ];
          };
        };
      };
    }