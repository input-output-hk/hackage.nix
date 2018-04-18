{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yesod-recaptcha2";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "ncaq";
        maintainer = "ncaq@ncaq.net";
        author = "ncaq";
        homepage = "https://github.com/ncaq/yesod-recaptcha2#readme";
        url = "";
        synopsis = "yesod recaptcha2";
        description = "recaptcha2 for yesod-form";
        buildType = "Simple";
      };
      components = {
        yesod-recaptcha2 = {
          depends  = [
            hsPkgs.base
            hsPkgs.classy-prelude-yesod
            hsPkgs.http-conduit
            hsPkgs.yesod-auth
          ];
        };
      };
    }