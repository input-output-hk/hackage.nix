{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "blaze-from-html";
        version = "0.3.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jaspervdj@gmail.com, simon.meier@inf.ethz.ch";
      author = "Jasper Van der Jeugt, Simon Meier";
      homepage = "http://jaspervdj.be/blaze";
      url = "";
      synopsis = "Tool to convert HTML to BlazeHtml code.";
      description = "Tool that converts HTML files to Haskell code, ready to be\nused with the BlazeHtml library.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "blaze-from-html" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.tagsoup)
          ];
        };
      };
    };
  }