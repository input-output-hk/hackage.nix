{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "markdown2svg"; version = "0.0.1.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "";
      url = "";
      synopsis = "markdown to svg converter";
      description = "Usage: markdown2svg foo.md\n\nNow. Implemented only following features.\n\nparagraph, header, code, list\n\nNot yet implemented following features.\n\nnewline, bold, quote, link, horizontal line";
      buildType = "Simple";
      };
    components = {
      exes = {
        "markdown2svg" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.yjsvg)
            (hsPkgs.papillon)
            (hsPkgs.filepath)
            (hsPkgs.monads-tf)
            (hsPkgs.markdown-pap)
            ];
          };
        };
      };
    }