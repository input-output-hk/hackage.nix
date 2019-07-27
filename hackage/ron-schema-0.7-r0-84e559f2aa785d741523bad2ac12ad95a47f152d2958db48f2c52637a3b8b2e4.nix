{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "ron-schema"; version = "0.7"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 Yuriy Syrovetskiy";
      maintainer = "Yuriy Syrovetskiy <haskell@cblp.su>";
      author = "";
      homepage = "https://github.com/ff-notes/ron";
      url = "";
      synopsis = "RON-Schema";
      description = "Replicated Object Notation (RON), data types (RDT), and RON-Schema\n\nExamples: https://github.com/ff-notes/ron/tree/master/examples";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.integer-gmp)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.hedn)
          (hsPkgs.megaparsec)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.ron)
          (hsPkgs.ron-rdt)
          ];
        };
      };
    }