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
        name = "VKHS";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012, Sergey Mironov";
      maintainer = "ierton@gmail.com";
      author = "Sergey Mironov";
      homepage = "http://github.com/ierton/vkhs";
      url = "";
      synopsis = "Provides access to VkontakteAPI (Popular Russian social network)";
      description = "Library written in Haskell provides access to Vkontakte API methods (popular\nRussian social network).\nInternally, library uses small curl-based HTTP automata and tagsoup for jumping\nover relocations and submitting various 'Yes I agree' forms.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.tagsoup-parsec)
          (hsPkgs.tagsoup)
          (hsPkgs.mtl)
          (hsPkgs.failure)
          (hsPkgs.bytestring)
          (hsPkgs.curlhs)
          (hsPkgs.safe)
          (hsPkgs.parsec)
          (hsPkgs.split)
          (hsPkgs.utf8-string)
          (hsPkgs.bimap)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
        ];
      };
    };
  }