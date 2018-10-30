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
      specVersion = "1.6";
      identifier = {
        name = "parsec1";
        version = "1.0.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Christian Maeder <Christian.Maeder@dfki.de>";
      author = "Daan Leijen <daan@cs.uu.nl>";
      homepage = "http://www.cs.uu.nl/~daan/parsec.html";
      url = "";
      synopsis = "Portable monadic parser combinators";
      description = "Parsec is designed from scratch as an industrial-strength parser\nlibrary.  It is simple, safe, well documented (on the package\nhomepage), has extensive libraries and good error messages,\nand is also fast.\n\nThis package is the core haskell98 part of the parsec2\npackage, intended to preserve its simplicity and portability.\n\nNote, that the module names overlap with those of parsec from the Haskell\nPlatform, therefore I do not recommend to unconditionally use parsec1 (or\nparsec2 and parsec3) as dependency in cabal files of packages for hackage.\nBut you may want to develop your code using these limited and portable\nparsec1 functions and finally change the dependency from parsec1 to parsec\nin order to avoid module ambiguities for users just installing your package.\nYour own module ambiguities are best avoided by hiding packages.\n\nThis version only differs from pervious ones by a changed description.\n(In version 1.0.0.4 only the inline pragmas have been removed #4849.)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }