{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "marxup";
        version = "3.1.0.0";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "jeanphilippe.bernardy@gmail.com";
      author = "Jean-Philippe Bernardy";
      homepage = "";
      url = "";
      synopsis = "Markup language preprocessor for Haskell";
      description = "Markup syntax preprocessor for Haskell. Steals ideas from the Scribble project (in Scheme).\nThe package also provides a DSL to output Latex seamlessly from MarXup output.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.labeled-tree)
          (hsPkgs.filepath)
          (hsPkgs.containers)
          (hsPkgs.process)
          (hsPkgs.lens)
          (hsPkgs.directory)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.lp-diagrams)
          (hsPkgs.text)
        ];
      };
      exes = {
        "marxup" = {
          depends = [
            (hsPkgs.configurator)
            (hsPkgs.base)
            (hsPkgs.pretty)
            (hsPkgs.parsek)
            (hsPkgs.dlist)
          ];
        };
        "marxup-example" = {
          depends = [
            (hsPkgs.marxup)
            (hsPkgs.lp-diagrams)
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.graphviz)
          ];
        };
      };
    };
  }