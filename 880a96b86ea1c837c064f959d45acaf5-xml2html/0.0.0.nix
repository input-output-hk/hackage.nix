{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "xml2html";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/xml";
      url = "";
      synopsis = "blaze-html instances for xml-enumerator types";
      description = "blaze-html instances for xml-enumerator types";
      buildType = "Simple";
    };
    components = {
      "xml2html" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.xml-enumerator)
          (hsPkgs.containers)
          (hsPkgs.blaze-html)
        ];
      };
    };
  }