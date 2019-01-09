{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "dtd-text"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gale@sefer.org";
      author = "Yitzchak Gale";
      homepage = "http://projects.haskell.org/dtd/";
      url = "";
      synopsis = "Parse and render XML DTDs";
      description = "This library provides an attoparsec-text parser and blaze-builder for\nXML Document Type Declaration (DTD) documents.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.dtd-types)
          (hsPkgs.xml-types)
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-text)
          (hsPkgs.blaze-builder)
          ];
        };
      };
    }