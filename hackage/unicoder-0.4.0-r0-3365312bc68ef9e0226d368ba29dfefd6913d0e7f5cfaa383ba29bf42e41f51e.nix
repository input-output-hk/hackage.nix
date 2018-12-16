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
      specVersion = "1.9.2";
      identifier = {
        name = "unicoder";
        version = "0.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2013, 2014, Okuno Zankoku";
      maintainer = "zankoku.okuno@gmail.com";
      author = "Zankoku Okuno";
      homepage = "";
      url = "";
      synopsis = "Make writing in unicode easy.";
      description = "Unicoder transforms text documents, replacing simple patterns with\nunicode equivalents. The patterns can be easily configured by the user.\nThis package is especially meant to open the vast and expressive array\nof unicode identifiers to programmers and language designers, but there's\nnothing wrong with a technically savvy user putting unicoder to work\non documents for human consumption.\n\nWith the default settings,\n\n@\n\\\\E x. \\\\A y. \\\\\\<x \\\\-> y\\\\\\> \\\\ldots\n\\\\l x,y. x \\\\of x \\\\of y\n@\n\nbecomes\n\n@\n∃x ∀y ⟨x → y⟩ …\nλ x,y. x ∘ x ∘ y\n@\n\nMany more possibilities abound just in the default set of characters.\nAny system of special characters can be made easy to type with a normal\nkeyboard as long as unicode supports it.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.attoparsec)
        ];
      };
      exes = {
        "unicoder" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.attoparsec)
            (hsPkgs.directory)
          ];
        };
      };
      tests = {
        "test-unicoder" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.attoparsec)
          ];
        };
      };
    };
  }