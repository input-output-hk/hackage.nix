{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hsebaysdk";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 Christopher Reichert";
        maintainer = "creichert07@gmail.com";
        author = "Christopher Reichert";
        homepage = "https://github.com/creichert/hsebaysdk";
        url = "";
        synopsis = "Haskell eBay SDK";
        description = "eBay API wrapper in Haskell.\nSee the git repository for example usages.\nWARNING:\nThe api of this package is still undergoing changes and\nimprovements and is subject to change. I am planning to remove the\nunsafe (partial) functions in 0.3 release with a more stablized\napi.";
        buildType = "Simple";
      };
      components = {
        hsebaysdk = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.resourcet
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ];
        };
      };
    }