{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "happstack-hamlet";
          version = "7.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2010 Jeremy Shaw";
        maintainer = "jeremy@seereason.com";
        author = "Jeremy Shaw";
        homepage = "http://www.happstack.com/";
        url = "";
        synopsis = "Support for Hamlet HTML templates in Happstack";
        description = "Happstack is a web application development framework.\nHamlet provides HTML templates which are checked for\ncorrectness at compile time. This package add support\nfor using Hamlet templates with Happstack.";
        buildType = "Simple";
      };
      components = {
        "happstack-hamlet" = {
          depends  = [
            hsPkgs.base
            hsPkgs.happstack-server
            hsPkgs.hamlet
            hsPkgs.text
          ];
        };
      };
    }