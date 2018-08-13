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
      specVersion = "1.10";
      identifier = {
        name = "flamethrower";
        version = "0.0.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "campersander@gmail.com";
      author = "Charmander";
      homepage = "https://charmander.me/flamethrower/";
      url = "";
      synopsis = "A template engine for HTML";
      description = "Flamethrower is a simpler indentation-based template language for HTML.\n\nIt’s intended to be a port of <https://github.com/charmander/razorleaf Razor Leaf>,\nbut it has quite a ways to go before reaching that status.\n\n>(-# LANGUAGE QuasiQuotes #-) -- Parentheses here should be curly braces\n>\n>import Flamethrower\n>\n>render name = [flamethrower|\n>p id: \"greeting\"\n>    \"Hello, \"\n>    em \"#(name)\" # Parentheses here should be curly braces\n>    \"!\"\n>|]\n>\n>main = putStrLn (render \"world\")\n>\n>-- <p id=\"greeting\">Hello, <em>world</em>!</p>";
      buildType = "Simple";
    };
    components = {
      "flamethrower" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.haskell-src-meta)
        ];
      };
    };
  }