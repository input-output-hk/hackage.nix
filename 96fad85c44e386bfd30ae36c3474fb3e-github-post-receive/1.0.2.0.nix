{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "github-post-receive";
          version = "1.0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2013 Shohei Yasutake";
        maintainer = "Shohei Yasutake <amutake.s@gmail.com>";
        author = "Shohei Yasutake";
        homepage = "https://github.com/amutake/github-post-receive";
        url = "";
        synopsis = "Github post-receive server library";
        description = "This is a library to construct github post-receive servers.";
        buildType = "Simple";
      };
      components = {
        github-post-receive = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.email-validate
            hsPkgs.conduit
            hsPkgs.http-types
            hsPkgs.wai
            hsPkgs.warp
          ];
        };
      };
    }