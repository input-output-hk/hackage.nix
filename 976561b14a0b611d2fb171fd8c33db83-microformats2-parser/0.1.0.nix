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
      specVersion = "1.18";
      identifier = {
        name = "microformats2-parser";
        version = "0.1.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "2015 Greg V <greg@unrelenting.technology>";
      maintainer = "greg@unrelenting.technology";
      author = "Greg V";
      homepage = "https://github.com/myfreeweb/microformats2-parser";
      url = "";
      synopsis = "A Microformats 2 parser.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "microformats2-parser" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.either)
          (hsPkgs.safe)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.microformats2-types)
          (hsPkgs.html-conduit)
          (hsPkgs.xml-lens)
          (hsPkgs.blaze-markup)
          (hsPkgs.xss-sanitize)
          (hsPkgs.pcre-heavy)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.hspec)
            (hsPkgs.template-haskell)
            (hsPkgs.microformats2-parser)
            (hsPkgs.microformats2-types)
            (hsPkgs.raw-strings-qq)
            (hsPkgs.data-default)
            (hsPkgs.html-conduit)
            (hsPkgs.xml-lens)
          ];
        };
      };
    };
  }