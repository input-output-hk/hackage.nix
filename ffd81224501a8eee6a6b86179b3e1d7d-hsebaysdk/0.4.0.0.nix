{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hsebaysdk";
          version = "0.4.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 Christopher Reichert";
        maintainer = "creichert07@gmail.com";
        author = "Christopher Reichert";
        homepage = "https://github.com/creichert/hsebaysdk";
        url = "";
        synopsis = "Haskell eBay SDK";
        description = "eBay API wrapper in Haskell.\nSee the git repository for example usages.";
        buildType = "Simple";
      };
      components = {
        hsebaysdk = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
      };
    }