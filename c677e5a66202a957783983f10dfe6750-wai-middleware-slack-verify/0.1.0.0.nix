{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      build-example = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wai-middleware-slack-verify";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "Copyright (c) 2018 Brandon Hamilton";
        maintainer = "brandon.hamilton@gmail.com";
        author = "Brandon Hamilton";
        homepage = "https://github.com/brandonhamilton/wai-middleware-slack-verify#readme";
        url = "";
        synopsis = "WAI Slack request verification middleware";
        description = "Middleware for WAI that uses signed secrets to verify Slack requests.\\n\nSee <https://api.slack.com/docs/verifying-requests-from-slack>";
        buildType = "Simple";
      };
      components = {
        "wai-middleware-slack-verify" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cryptonite
            hsPkgs.errors
            hsPkgs.http-types
            hsPkgs.memory
            hsPkgs.wai
          ];
        };
        exes = {
          "bot-example" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cryptonite
              hsPkgs.errors
              hsPkgs.http-types
              hsPkgs.memory
              hsPkgs.wai
            ] ++ pkgs.lib.optionals _flags.build-example [
              hsPkgs.linklater
              hsPkgs.text
              hsPkgs.wai-middleware-slack-verify
              hsPkgs.warp
            ];
          };
        };
        tests = {
          "wai-middleware-slack-verify-test" = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cryptonite
              hsPkgs.errors
              hsPkgs.hspec
              hsPkgs.http-types
              hsPkgs.memory
              hsPkgs.time
              hsPkgs.wai
              hsPkgs.wai-extra
              hsPkgs.wai-middleware-slack-verify
            ];
          };
        };
      };
    }