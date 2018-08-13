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
      specVersion = "1.8";
      identifier = {
        name = "discount";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "phurst@amateurtopologist.com";
      author = "Patrick Hurst";
      homepage = "http://github.com/lightquake/discount";
      url = "";
      synopsis = "Haskell bindings to the discount Markdown library.";
      description = "Discount is a thin wrapper around the discount library <http://www.pell.portland.or.us/~orc/Code/discount/> for parsing Markdown. It supports both additional features such as definition lists and tables, while also having a mode for pure Markdown.";
      buildType = "Simple";
    };
    components = {
      "discount" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
        ];
        libs = [ (pkgs.markdown) ];
      };
    };
  }