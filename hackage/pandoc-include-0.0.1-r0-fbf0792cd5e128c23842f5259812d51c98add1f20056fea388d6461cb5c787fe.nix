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
        name = "pandoc-include";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "(c) 2015 Dániel Stein";
      maintainer = "Dániel Stein <daniel@stein.hu>";
      author = "Dániel Stein <daniel@stein.hu>";
      homepage = "https://github.com/steindani/pandoc-include";
      url = "";
      synopsis = "Include other Markdown files";
      description = "A Pandoc filter that replaces include labeled\nCode Blocks with the contents of the referenced\nMarkdown files. Even nested, recursive includes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.pandoc)
          (hsPkgs.pandoc-types)
          (hsPkgs.directory)
        ];
      };
      exes = {
        "pandoc-include" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.pandoc)
            (hsPkgs.pandoc-types)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }