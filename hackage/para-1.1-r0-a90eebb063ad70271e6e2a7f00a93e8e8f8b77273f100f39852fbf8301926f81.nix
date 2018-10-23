{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "para";
        version = "1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kevin Quick <quick@sparq.org>";
      author = "Kevin Quick";
      homepage = "";
      url = "";
      synopsis = "Text paragraph formatting";
      description = "A paragraph formatting utility.  Provided with input text that is\narbitrarily split amongst several strings, this utility will\nreformat the text into paragraphs which do not exceed the\nspecified width.  Paragraphs are delimited by blank lines in the\ninput.";
      buildType = "Simple";
    };
    components = {
      "para" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }