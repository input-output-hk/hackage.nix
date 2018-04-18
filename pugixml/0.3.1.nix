{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pugixml";
          version = "0.3.1";
        };
        license = "MIT";
        copyright = "(c) 2014-2015 Hirotomo Moriwaki";
        maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        homepage = "https://github.com/philopon/pugixml-hs";
        url = "";
        synopsis = "pugixml binding.";
        description = "pugixml binding. example: <docs/Text-XML-Pugi.html>";
        buildType = "Simple";
      };
      components = {
        pugixml = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.data-default-class
            hsPkgs.template-haskell
          ];
          libs = [ pkgs."stdc++" ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.pugixml
              hsPkgs.tasty
              hsPkgs.tasty-hunit
            ];
          };
        };
      };
    }