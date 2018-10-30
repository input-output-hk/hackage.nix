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
      specVersion = "1.2.3";
      identifier = {
        name = "parsec3";
        version = "1.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Christian Maeder <Christian.Maeder@dfki.de>";
      author = "Daan Leijen <daan@microsoft.com>, Paolo Martini <paolo@nemail.it>";
      homepage = "http://www.cs.uu.nl/~daan/parsec.html";
      url = "";
      synopsis = "Monadic parser combinators";
      description = "Parsec is designed from scratch as an industrial-strength parser\nlibrary.  It is simple, safe, well documented (on the package\nhomepage), has extensive libraries and good error messages,\nand is also fast.  It is defined as a monad transformer that can be\nstacked on arbitrary monads, and it is also parametric in the\ninput stream type.\n\nThis package comes without the compatibility layer for parsec2.\n\nNote, that the module names overlap with those of newer parsec\nversions, therefore I do not recommend to unconditionally use parsec3\nas dependency in cabal files of packages for hackage.  But you may\nwant to develop your code using this subset of parsec3 modules and\nfinally change the dependency from parsec3 to parsec-3.1.0 in order to\navoid module ambiguities for users just installing your package.  Your\nown module ambiguities are best avoided by hiding packages.\n\nThis version only differs from the previous one by a changed\ndescription.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.syb)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
        ];
      };
    };
  }