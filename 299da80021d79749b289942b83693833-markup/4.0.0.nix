{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "markup";
          version = "4.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Athan Clark <athan.clark@gmail.com>";
        author = "Athan Clark <athan.clark@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Abstraction for HTML-embedded content";
        description = "This library tries to simplify deployment of common HTML constructs, for different\nHTML engines.\n\nDeployment, from this library's perspective, means /how/ something can be\nrendered to markup, yet still achieve the same \"result\" to the end user (namely\nthe DOM). For instance, we could use a @<link>@ tag to reference external Css,\nor we might insert the Css code /inline/ a @<style>@ tag.\n\nWe use simple tags to infer the deployment mechanism for a context of\nmarkup. The three deployment mechanisms provided include\n\n* /inline/ - the asset inserted between markup tags\n\n* /local/ - assets on the current server\n\n* /remote/ - assets referenced with a complete URI";
        buildType = "Simple";
      };
      components = {
        markup = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
            hsPkgs.comonad
            hsPkgs.clay
            hsPkgs.lucid
            hsPkgs.mmorph
            hsPkgs.monad-control
            hsPkgs.monad-logger
            hsPkgs.mtl
            hsPkgs.path-extra
            hsPkgs.resourcet
            hsPkgs.text
            hsPkgs.transformers-base
            hsPkgs.urlpath
          ];
        };
      };
    }