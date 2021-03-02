{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { base4 = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "parsec"; version = "3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Derek Elkins <derek.a.elkins@gmail.com>";
      author = "Daan Leijen <daan@cs.uu.nl>, Paolo Martini <paolo@nemail.it>";
      homepage = "http://www.cs.uu.nl/~daan/parsec.html";
      url = "";
      synopsis = "Monadic parser combinators";
      description = "Parsec is designed from scratch as an industrial-strength parser\nlibrary.  It is simple, safe, well documented (on the package\nhomepage), has extensive libraries and good error messages,\nand is also fast.  It is defined as a monad transformer that can be\nstacked on arbitrary monads, and it is also parametric in the\ninput stream type.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ] ++ (if flags.base4
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      };
    }