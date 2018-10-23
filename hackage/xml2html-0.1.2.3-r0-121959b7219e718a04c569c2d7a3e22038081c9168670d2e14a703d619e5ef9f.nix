{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      blaze_html_0_5 = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "xml2html";
        version = "0.1.2.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/xml";
      url = "";
      synopsis = "blaze-html instances for xml-conduit types";
      description = "blaze-html instances for xml-conduit types";
      buildType = "Simple";
    };
    components = {
      "xml2html" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.xml-conduit)
          (hsPkgs.containers)
        ] ++ (if flags.blaze_html_0_5
          then [
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
          ]
          else [ (hsPkgs.blaze-html) ]);
      };
    };
  }