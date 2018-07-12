{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "happstack-hstringtemplate";
          version = "7.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Happstack team <happs@googlegroups.com>";
        author = "Jeremy Shaw";
        homepage = "http://www.happstack.com/";
        url = "";
        synopsis = "Support for using HStringTemplate in Happstack";
        description = "Happstack is a web application framework. HStringTemplate is a templating solution.";
        buildType = "Simple";
      };
      components = {
        "happstack-hstringtemplate" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.happstack-server
            hsPkgs.hslogger
            hsPkgs.HStringTemplate
            hsPkgs.mtl
          ];
        };
      };
    }