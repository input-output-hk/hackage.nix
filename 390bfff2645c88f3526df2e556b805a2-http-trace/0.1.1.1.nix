{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "http-trace";
          version = "0.1.1.1";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2016 Sergey Bushnyak";
        maintainer = "sergey.bushnyak@sigrlami.eu";
        author = "Sergey Bushnyak";
        homepage = "https://github.com/sigrlami/http-trace#readme";
        url = "";
        synopsis = "Tracking http redirects";
        description = "Tracking http redirects for supplied url";
        buildType = "Simple";
      };
      components = {
        "http-trace" = {
          depends  = [
            hsPkgs.base
            hsPkgs.curl
            hsPkgs.pcre-heavy
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.safe
            hsPkgs.transformers
            hsPkgs.MissingH
          ];
        };
        exes = {
          "http-trace" = {
            depends  = [
              hsPkgs.base
              hsPkgs.http-trace
            ];
          };
        };
      };
    }