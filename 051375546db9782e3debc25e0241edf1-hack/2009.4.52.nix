{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hack";
          version = "2009.4.52";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
        author = "Wang, Jinjing";
        homepage = "http://github.com/nfjinjing/hack/tree/master";
        url = "";
        synopsis = "a sexy Haskell Webserver Interface";
        description = "Hack: a sexy Haskell Webserver Interface.\nHack is a brain-dead port of the brilliant Ruby Rack <http://rack.rubyforge.org/> webserver interface.";
        buildType = "Simple";
      };
      components = {
        "hack" = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-default
          ];
        };
      };
    }