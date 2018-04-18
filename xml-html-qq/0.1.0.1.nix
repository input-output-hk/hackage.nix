{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "xml-html-qq";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Dennis Gosnell";
        maintainer = "cdep.illabout@gmail.com";
        author = "Dennis Gosnell";
        homepage = "https://github.com/cdepillabout/xml-html-qq";
        url = "";
        synopsis = "Quasi-quoters for XML and HTML Documents";
        description = "Please see <https://github.com/cdepillabout/xml-html-qq#readme README.md>.";
        buildType = "Simple";
      };
      components = {
        xml-html-qq = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-markup
            hsPkgs.conduit
            hsPkgs.data-default
            hsPkgs.from-sum
            hsPkgs.heterocephalus
            hsPkgs.html-conduit
            hsPkgs.resourcet
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.th-lift
            hsPkgs.th-lift-instances
            hsPkgs.xml-conduit
          ];
        };
        tests = {
          xml-html-qq-doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.Glob
            ];
          };
          xml-html-qq-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.text
              hsPkgs.xml-conduit
              hsPkgs.xml-html-qq
            ];
          };
        };
      };
    }