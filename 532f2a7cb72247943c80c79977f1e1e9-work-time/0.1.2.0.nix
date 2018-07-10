{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "work-time";
          version = "0.1.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Rickard Andersson";
        maintainer = "gonz@severnatazvezda.com";
        author = "Rickard Andersson";
        homepage = "https://gitlab.com/gonz/work-time#work-time";
        url = "";
        synopsis = "A library for parsing a chat-based work hour reporting scheme.";
        description = "Parses a certain format for hour and task reporting in chat/Slack\nform. See README for format.";
        buildType = "Simple";
      };
      components = {
        work-time = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.megaparsec
            hsPkgs.containers
          ];
        };
        exes = {
          work-time = {
            depends  = [
              hsPkgs.base
              hsPkgs.work-time
              hsPkgs.text
            ];
          };
        };
      };
    }