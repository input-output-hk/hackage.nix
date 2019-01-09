{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "ron"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 Yuriy Syrovetskiy";
      maintainer = "Yuriy Syrovetskiy <haskell@cblp.su>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "RON, RON-RDT, and RON-Schema";
      description = "Replicated Object Notation (RON), data types (RDT),\nand RON-Schema";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.Diff)
          (hsPkgs.errors)
          (hsPkgs.extra)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.safe)
          (hsPkgs.stringsearch)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.ron)
            ];
          };
        };
      };
    }