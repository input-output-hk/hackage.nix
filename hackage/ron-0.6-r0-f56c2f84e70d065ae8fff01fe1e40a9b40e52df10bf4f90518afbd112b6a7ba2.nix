{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "ron"; version = "0.6"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 Yuriy Syrovetskiy";
      maintainer = "Yuriy Syrovetskiy <haskell@cblp.su>";
      author = "";
      homepage = "https://github.com/ff-notes/ron";
      url = "";
      synopsis = "RON";
      description = "Replicated Object Notation (RON), data types (RDT), and RON-Schema\n\nTypical usage:\n\n> import RON.Data\n> import RON.Schema.TH\n> import RON.Storage.IO as Storage\n>\n> [mkReplicated|\n>     (struct_lww Note\n>         active Boole\n>         text RgaString)\n> |]\n>\n> instance Collection Note where\n>     collectionName = \"note\"\n>\n> main :: IO ()\n> main = do\n>     let dataDir = \"./data/\"\n>     h <- Storage.newHandle dataDir\n>     runStorage h \$ do\n>         obj <- newObject\n>             Note{active = True, text = \"Write a task manager\"}\n>         createDocument obj";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.integer-gmp)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          ];
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.integer-gmp)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.ron)
            ];
          };
        };
      };
    }