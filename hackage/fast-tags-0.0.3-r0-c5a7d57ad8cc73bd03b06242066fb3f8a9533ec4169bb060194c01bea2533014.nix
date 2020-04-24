{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "fast-tags"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Evan Laforge <qdunkan@gmail.com>";
      author = "Evan Laforge";
      homepage = "";
      url = "";
      synopsis = "Fast incremental vi tags.";
      description = "Yet another tags program.  Like hasktags, it uses its own parser rather\nthan haskell-src or haskell-src-exts, so it's fast.  It understands\nhsc files, though not literate haskell.\n\nIn addition, it will load an existing tags file and merge generated tags.\n\nThe intent is to bind it to vim's BufWrite autocommand to automatically\nkeep the tags file up to date.\n\nChanges since 0.0.2:\n\n* Lots of speed ups, especially when given lots of files at once.\n\n* Support for type families and GADTs.\n\n* Support infix operators, multiple declarations per line, and fix various\nother bugs that missed or gave bad tags.\n\nLimitations:\n\n- No emacs tags, but they would be easy to add.\n\n- Not using a real haskell parser means there are more likely to be dark\ncorners that don't parse right.\n\n- Only top-level functions with type declarations are tagged.  Top-level\nfunctions without type declarations are skipped, as are ones inside 'let'\nor 'where'.\n\n- Code has to be indented \\\"properly\\\", so brace and semicolon style with\nstrange dedents will probably confuse it.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "fast-tags" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }