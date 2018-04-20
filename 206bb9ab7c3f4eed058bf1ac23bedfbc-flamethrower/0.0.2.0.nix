{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "flamethrower";
          version = "0.0.2.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "campersander@gmail.com";
        author = "Charmander";
        homepage = "https://charmander.me/flamethrower/";
        url = "";
        synopsis = "A template engine for HTML";
        description = "Flamethrower is a simpler indentation-based template language for HTML.\n\nIt’s intended to be a port of <https://github.com/charmander/razorleaf Razor Leaf>,\nbut it has quite a ways to go before reaching that status.\n\n@\n&#123;&#35;- LANGUAGE QuasiQuotes -&#35;&#125;\n\nimport Flamethrower\n\nrender name = [flamethrower|\np id: &#34;greeting&#34;\n&#32;&#32;&#32;&#32;&#34;Hello, &#34;\n&#32;&#32;&#32;&#32;em &#34;&#35;&#123;name&#125;&#34;\n&#32;&#32;&#32;&#32;&#34;!&#34;\n|]\n\nmain = putStrLn (render &#34;world&#34;)\n\n&#45;&#45; &#60;p id=&#34;greeting&#34;&#62;Hello, &#60;em&#62;world&#60;&#47;em&#62;!&#60;&#47;p&#62;\n@";
        buildType = "Simple";
      };
      components = {
        flamethrower = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.haskell-src-meta
            hsPkgs.text
          ];
        };
      };
    }