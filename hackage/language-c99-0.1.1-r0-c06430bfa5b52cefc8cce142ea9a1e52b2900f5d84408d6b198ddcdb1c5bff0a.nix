{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "language-c99"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Frank Dedden <dev@dedden.net>";
      author = "Frank Dedden";
      homepage = "";
      url = "";
      synopsis = "An implementation of the C99 AST that strictly follows the\nstandard.";
      description = "This package contains an implementation of the C99 AST as described in\n<http://www.open-std.org/jtc1/sc22/wg14/www/docs/n1256.pdf>. Sticking closely\nto this standard assures us that the program we deal with is a valid C99\nprogram.\n\nAdditionally the library comes with a pretty printer.\n\nThe package does not come with handy wrapper and utility functions to write a\nC99 program, it just contains the bare AST. It is highly recommended to use\nthe wrapper provided by 'language-c99-simple' and 'language-c99-util' for\nwriting programs.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.pretty) ]; };
      };
    }