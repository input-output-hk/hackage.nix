{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { enable-hlint-test = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "xml-conduit-parse"; version = "0.3.1.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "chahine.moreau@gmail.com";
      author = "chahine.moreau@gmail.com";
      homepage = "https://github.com/k0ral/xml-conduit-parse";
      url = "";
      synopsis = "Streaming XML parser based on conduits.";
      description = "This library provides an alternative, hopefully higher-level implementation for the parsing part of @xml-conduit@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.conduit-parse)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.parsers)
          (hsPkgs.text)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-types)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.conduit)
            (hsPkgs.conduit-parse)
            (hsPkgs.xml-conduit-parse)
            (hsPkgs.data-default)
            (hsPkgs.parsers)
            (hsPkgs.resourcet)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            ];
          };
        "hlint" = { depends = [ (hsPkgs.base) (hsPkgs.hlint) ]; };
        };
      };
    }