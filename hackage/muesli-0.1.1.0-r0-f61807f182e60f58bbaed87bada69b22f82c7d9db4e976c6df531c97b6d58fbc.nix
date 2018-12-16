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
        name = "muesli";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "Copyright (c) 2015 Călin Ardelean";
      maintainer = "Călin Ardelean <calinucs@gmail.com>";
      author = "Călin Ardelean";
      homepage = "https://github.com/clnx/muesli";
      url = "";
      synopsis = "A simple document-oriented database";
      description = "@muesli@ is a simple\n<https://en.wikipedia.org/wiki/Multiversion_concurrency_control MVCC>\n<https://en.wikipedia.org/wiki/Document-oriented_database document-oriented database>\nfeaturing ACID transactions, automatic index management and minimal boilerplate.\n\nImport the \"Database.Muesli.Types\" module to mark up your types for indexing,\n\"Database.Muesli.Query\" for writing and running queries,\nand \"Database.Muesli.Handle\" for database management.\nThe rest of the modules are internal, but exposed just in case.\n\nSee the README.md file for an usage example.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.time)
          (hsPkgs.containers)
          (hsPkgs.psqueues)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.hashable)
          (hsPkgs.filepath)
          (hsPkgs.directory)
        ];
      };
    };
  }