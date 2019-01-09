{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "parsimony"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "iavor.diatchki@gmail.com";
      author = "Daan Leijen <daan@cs.uu.nl>, Iavor S. Diatchki <iavor.diatchki@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Monadic parser combinators derived from Parsec";
      description = "Parsimony is a generalized and simplified version of the\nindustrial-strength parser combinator library Parsec.\nLike Parsec, it is simple, safe, well documented, convenient,\nwith good error messages, and fast.  In addition, Parsimony\nadds support for working with differet types of input such as\nbyte strings (for compat input representation) and\nlazy byte strings (for parsing large amounts of data).\nIt also supports working with text in different character\nencodings such as UTF8.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.utf8-string) ];
        };
      };
    }