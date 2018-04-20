{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hakyll-contrib-hyphenation";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Pavel Kretov <firegurafiku@gmail.com>";
        author = "Pavel Kretov <firegurafiku@gmail.com>";
        homepage = "https://bitbucket.org/rvlm/hakyll-contrib-hyphenation";
        url = "";
        synopsis = "Automatic hyphenation for Hakyll";
        description = "";
        buildType = "Simple";
      };
      components = {
        hakyll-contrib-hyphenation = {
          depends  = [
            hsPkgs.base
            hsPkgs.split
            hsPkgs.hyphenation
            hsPkgs.tagsoup
            hsPkgs.hakyll
          ];
        };
      };
    }