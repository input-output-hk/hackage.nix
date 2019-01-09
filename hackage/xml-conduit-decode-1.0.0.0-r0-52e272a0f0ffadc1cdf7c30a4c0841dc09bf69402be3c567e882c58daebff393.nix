{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "xml-conduit-decode"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "ben.kolera@gmail.com";
      author = "Ben Kolera";
      homepage = "https://github.com/benkolera/xml-conduit-decode";
      url = "";
      synopsis = "Historical cursors & decoding on top of xml-conduit.";
      description = "Created in the sprit of scalaz-xml.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.lens)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.xml-conduit)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.data-default)
            (hsPkgs.lens)
            (hsPkgs.text)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.time)
            (hsPkgs.xml-conduit)
            (hsPkgs.xml-conduit-decode)
            (hsPkgs.xml-types)
            ];
          };
        };
      };
    }