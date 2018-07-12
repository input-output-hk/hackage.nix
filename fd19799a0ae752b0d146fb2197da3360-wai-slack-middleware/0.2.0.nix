{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wai-slack-middleware";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2017 Sibi";
        maintainer = "sibi@psibi.in";
        author = "Sibi Prabakaran";
        homepage = "https://github.com/psibi/wai-slack-middleware#readme";
        url = "";
        synopsis = "A Slack middleware for WAI";
        description = "Logs the request information into Slack through webhook from\na WAI application.";
        buildType = "Simple";
      };
      components = {
        "wai-slack-middleware" = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-client
            hsPkgs.wai
            hsPkgs.http-types
            hsPkgs.aeson
          ];
        };
        tests = {
          "wai-slack-middleware-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.wai-slack-middleware
            ];
          };
        };
      };
    }