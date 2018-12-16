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
      specVersion = "1.6";
      identifier = {
        name = "polysoup";
        version = "0.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/polysoup";
      url = "";
      synopsis = "Online XML parsing with polyparse and tagsoup";
      description = "The library provides combinators for lazy, incremental XML parsing.\nParsing results are generated lazily and the input is read on demand.\n\nIt is built on top of the tagsoup library, which is responsible for\npreliminary tokenization of an XML input, and the polyparse library,\nwhich provides primitives for lazy and incremental parsing.\n\nTo use the library import the \"Text.XML.PolySoup\" module.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.tagsoup)
          (hsPkgs.polyparse)
        ];
      };
    };
  }