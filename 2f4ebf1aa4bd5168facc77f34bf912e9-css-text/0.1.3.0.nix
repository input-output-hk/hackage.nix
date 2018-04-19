{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "css-text";
          version = "0.1.3.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>, Greg Weber <greg@gregweber.info>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "https://github.com/yesodweb/css-text.git#readme";
        url = "";
        synopsis = "CSS parser and renderer.";
        description = "Please see the README and generated docs at <https://www.stackage.org/package/css-text>";
        buildType = "Simple";
      };
      components = {
        css-text = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.text
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
        };
        tests = {
          runtests = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.css-text
              hsPkgs.hspec
              hsPkgs.text
            ];
          };
        };
      };
    }