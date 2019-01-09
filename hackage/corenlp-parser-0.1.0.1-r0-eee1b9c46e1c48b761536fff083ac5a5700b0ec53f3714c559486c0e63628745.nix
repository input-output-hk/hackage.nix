{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "corenlp-parser"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "All Rights Reserved";
      maintainer = "k-bx@k-bx.com";
      author = "Kostiantyn Rybnikov";
      homepage = "https://github.com/k-bx/corenlp-parser#readme";
      url = "";
      synopsis = "Launches CoreNLP and parses the JSON output";
      description = "Launches CoreNLP and parses the JSON output";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.raw-strings-qq)
          (hsPkgs.string-class)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          ];
        };
      };
    }