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
      specVersion = "1.10";
      identifier = {
        name = "bibdb";
        version = "0.4.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "coskuacay@gmail.con";
      author = "Josh Acay";
      homepage = "https://github.com/cacay/bibdb";
      url = "";
      synopsis = "A database based bibliography manager for BibTeX";
      description = "bibdb is a simple citation resolver and bibliography manager for BibTeX.\nInstead of manually copy pasting bibliographies, you specify a reference\nto the work you want to cite (by providing a DOI or a DBLP key, for example)\nin a simple domain specific language. bibdb is then responsible for fetching\nthe citations, renaming them, removing duplicates, and sorting them properly.\nFor more information, see the <https://github.com/cacay/bibdb>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "bibdb" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.optparse-applicative)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.microlens)
            (hsPkgs.microlens-mtl)
            (hsPkgs.microlens-th)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.pretty)
            (hsPkgs.bibtex)
            (hsPkgs.parsec)
            (hsPkgs.curl)
            (hsPkgs.download-curl)
          ];
          build-tools = [
            (hsPkgs.buildPackages.alex)
            (hsPkgs.buildPackages.happy)
          ];
        };
      };
    };
  }