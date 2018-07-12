{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wai-transformers";
          version = "0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Athan Clark <athan.clark@gmail.com>";
        author = "Athan Clark <athan.clark@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Simple parameterization of Wai's Application type";
        description = "Please see the <http://athanclark.github.io/posts/2015-10-24-wai-transformers-tut.html tutorial> for more details.";
        buildType = "Simple";
      };
      components = {
        "wai-transformers" = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai
            hsPkgs.transformers
          ];
        };
      };
    }