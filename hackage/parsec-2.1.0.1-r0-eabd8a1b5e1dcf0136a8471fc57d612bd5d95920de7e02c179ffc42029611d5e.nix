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
        name = "parsec";
        version = "2.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daan Leijen <daan@cs.uu.nl>";
      author = "Daan Leijen <daan@cs.uu.nl>";
      homepage = "http://www.cs.uu.nl/~daan/parsec.html";
      url = "";
      synopsis = "Monadic parser combinators";
      description = "Parsec is designed from scratch as an industrial-strength parser\nlibrary.  It is simple, safe, well documented (on the package\nhomepage), has extensive libraries and good error messages,\nand is also fast.";
      buildType = "Simple";
    };
    components = {
      "parsec" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }