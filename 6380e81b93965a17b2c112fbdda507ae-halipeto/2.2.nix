{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "halipeto";
          version = "2.2";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) 2004-2010 Peter Simons";
        maintainer = "Peter Simons <simons@cryp.to>";
        author = "Andrew Cooke <andrew@acooke.org>, Peter Simons <simons@cryp.to>";
        homepage = "http://gitorious.org/halipeto";
        url = "";
        synopsis = "Haskell Static Web Page Generator";
        description = "A library for generating static HTML pages from XML\ntemplates and a file-based value dictionary.";
        buildType = "Simple";
      };
      components = {
        halipeto = {
          depends  = [
            hsPkgs.base
            hsPkgs.HaXml
            hsPkgs.directory
            hsPkgs.pandoc
          ];
        };
      };
    }