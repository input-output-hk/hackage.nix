{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pencil"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 Elben Shira";
      maintainer = "elben@shira.im";
      author = "Elben Shira";
      homepage = "https://github.com/elben/pencil";
      url = "";
      synopsis = "Static site generator";
      description = "Pencil is a static site generator. Use Pencil to build a personal website, a\nblog, and more. Pencil comes pre-loaded with goodies such as Markdown and\nSass/Scss support, templating, blogging, and tagging. Designed with the\nHaskell beginner in mind, but flexible enough to extend for your own needs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.edit-distance)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.hsass)
          (hsPkgs.mtl)
          (hsPkgs.pandoc)
          (hsPkgs.parsec)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.xml)
          (hsPkgs.yaml)
          ];
        };
      tests = {
        "pencil-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.pencil) (hsPkgs.doctest) ];
          };
        "pencil-example-simple" = {
          depends = [ (hsPkgs.base) (hsPkgs.pencil) ];
          };
        "pencil-example-blog" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.pencil)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.mtl)
            ];
          };
        "pencil-example-complex" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.pencil)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.mtl)
            ];
          };
        "pencil-docs" = {
          depends = [ (hsPkgs.base) (hsPkgs.pencil) (hsPkgs.text) ];
          };
        };
      };
    }