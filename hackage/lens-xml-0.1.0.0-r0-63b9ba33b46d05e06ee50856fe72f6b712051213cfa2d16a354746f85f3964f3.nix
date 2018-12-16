{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "lens-xml";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Nick Partridge";
      maintainer = "nkpart@gmail.com";
      author = "Nick Partridge";
      homepage = "https://github.com/nkpart/lens-xml#readme";
      url = "";
      synopsis = "Lenses for the xml package.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.xml)
        ];
      };
      tests = {
        "lens-xml-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.lens-xml)
            (hsPkgs.xml)
            (hsPkgs.lens)
          ];
        };
      };
    };
  }