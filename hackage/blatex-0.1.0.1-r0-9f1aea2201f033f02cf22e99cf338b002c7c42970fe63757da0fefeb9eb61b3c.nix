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
        name = "blatex";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "2016rshah@gmail.com";
      author = "Rushi Shah";
      homepage = "https://github.com/2016rshah/BlaTeX";
      url = "";
      synopsis = "Blog in LaTeX";
      description = "Markdown and HTML are the standard tools used to write your every day tech blog with. But they have pretty weak support for embedding mathematical formulas, and are not conducive to writing for an extended period of time. Plus, they aren't even Turing complete! So use BlaTeX to start blogging in LaTeX!\n\nBlaTeX is basically a static site generator (like Jekyll) that lets you write your blog in LaTeX, specify a layout file for the homepage, and publish it to github pages.\n\nTo get started, check out <https://github.com/2016rshah/BlaTeX#how-to>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "blatex" = {
          depends  = [
            (hsPkgs.HaTeX)
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.directory)
            (hsPkgs.split)
            (hsPkgs.tagsoup)
            (hsPkgs.text)
          ];
        };
      };
    };
  }