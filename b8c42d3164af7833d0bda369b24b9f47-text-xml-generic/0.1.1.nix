{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "text-xml-generic";
          version = "0.1.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Oscar Finnsson";
        author = "Oscar Finnsson";
        homepage = "http://github.com/finnsson/Text.XML.Generic";
        url = "";
        synopsis = "Serialize Data to XML (strings).";
        description = "@Text.XML.Generic@ can automatically serialize from the Data-type class to XML-strings.";
        buildType = "Simple";
      };
      components = {
        "text-xml-generic" = {
          depends  = [
            hsPkgs.base
            hsPkgs.not-in-base
            hsPkgs.template-haskell
            hsPkgs.haskell98
            hsPkgs.xml
            hsPkgs.syb
            hsPkgs.split
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.mtl
          ];
        };
      };
    }