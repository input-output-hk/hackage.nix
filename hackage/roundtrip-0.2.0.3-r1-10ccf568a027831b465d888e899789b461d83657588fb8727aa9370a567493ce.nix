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
      specVersion = "1.8";
      identifier = {
        name = "roundtrip";
        version = "0.2.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Stefan Wehr <wehr@factisresearch.com>,";
      author = "Stefan Wehr <wehr@factisresearch.com>,\nDavid Leuschner <leuschner@factisresearch.com>";
      homepage = "";
      url = "";
      synopsis = "Bidirectional (de-)serialization";
      description = "Roundtrip allows the definition of bidirectional\n(de-)serialization specifications. The specification language\nis based on the ideas described in the paper\n/Invertible Syntax Descriptions: Unifying Parsing and Pretty Printing/\nby Tillmann Rendel and Klaus Ostermann, Haskell Symposium 2010.\n\nThis package does not provide concrete instances of the\nspecification classes, see the packages roundtrip-string and\nroundtrip-xml instead.\n\nThe package contains slightly modified code from\nTillmann Rendel's partial-isomorphisms and invertible-syntax\npackages (Copyright (c) 2010-11 University of Marburg).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.safe)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.xml-types)
          (hsPkgs.pretty)
        ];
      };
    };
  }