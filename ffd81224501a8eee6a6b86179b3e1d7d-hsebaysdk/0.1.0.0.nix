{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hsebaysdk";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 Christopher Reichert";
        maintainer = "creichert07@gmail.com";
        author = "Christopher Reichert";
        homepage = "http://reichertbrothers.com";
        url = "";
        synopsis = "Haskell eBay SDK";
        description = "eBay API wrapper in Haskell.\nSee the git repository for example usages.";
        buildType = "Simple";
      };
      components = {
        hsebaysdk = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.unordered-containers
            hsPkgs.text
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.resourcet
          ];
        };
      };
    }