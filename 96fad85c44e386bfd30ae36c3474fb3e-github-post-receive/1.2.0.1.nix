{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "github-post-receive";
          version = "1.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2013 Shohei Yasutake";
        maintainer = "Shohei Yasutake <amutake.s@gmail.com>";
        author = "Shohei Yasutake";
        homepage = "https://github.com/amutake/github-post-receive";
        url = "";
        synopsis = "GitHub webhooks library";
        description = "This is a library to construct github webhooks servers.\n\nCurrently, this library supports following events:\n\n* push\n\n* status";
        buildType = "Simple";
      };
      components = {
        "github-post-receive" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.aeson
            hsPkgs.email-validate
            hsPkgs.http-types
            hsPkgs.wai
            hsPkgs.warp
            hsPkgs.wai-logger
          ];
        };
      };
    }