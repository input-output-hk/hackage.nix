{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "pencil";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Elben Shira";
      maintainer = "elbenshira@gmail.com";
      author = "Elben Shira";
      homepage = "https://github.com/elben/pencil";
      url = "";
      synopsis = "Static site generator";
      description = "Pencil is a static site generator. Use it to generate your personal website!\nPencil comes pre-loaded with goodies such as blogging, tagging, templating,\nand Markdown Sass/Scss support. Flexible enough to extend for your own needs.";
      buildType = "Simple";
    };
    components = {
      "pencil" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.edit-distance)
          (hsPkgs.feed)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.hsass)
          (hsPkgs.mtl)
          (hsPkgs.pandoc)
          (hsPkgs.semigroups)
          (hsPkgs.parsec)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.xml)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "pencil-example-simple" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pencil)
          ];
        };
        "pencil-example-blog" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pencil)
            (hsPkgs.unordered-containers)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "pencil-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pencil)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }