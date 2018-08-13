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
        name = "concraft-pl";
        version = "0.7.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013 Jakub Waszczuk";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "http://zil.ipipan.waw.pl/Concraft";
      url = "";
      synopsis = "Morphological tagger for Polish";
      description = "A morphological tagger for Polish based on the concraft library.";
      buildType = "Simple";
    };
    components = {
      "concraft-pl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.concraft)
          (hsPkgs.tagset-positional)
          (hsPkgs.sgd)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.binary)
          (hsPkgs.process)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.network)
          (hsPkgs.lazy-io)
          (hsPkgs.split)
        ];
      };
      exes = {
        "concraft-pl" = {
          depends  = [ (hsPkgs.cmdargs) ];
        };
      };
    };
  }