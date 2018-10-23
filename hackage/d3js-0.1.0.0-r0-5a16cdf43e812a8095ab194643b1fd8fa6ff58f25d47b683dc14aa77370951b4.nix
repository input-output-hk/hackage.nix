{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "d3js";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nebuta.office@gmail.com";
      author = "Nebuta";
      homepage = "https://github.com/nebuta/d3js-haskell";
      url = "";
      synopsis = "Declarative visualization on a web browser with DSL approach.";
      description = "A library for visualization on a web browser. This works as a DSL that generates JavaScript source code working with D3.js (http://d3js.org/) library.\n\nYou can compose operations with a typed DSL with Haskell's abstraction power.\n\nThis is still an alpha version, and the structure may be changed in the near future.\n\n* A simplest example: drawing a bar chart\n\n> import Control.Monad\n> import qualified Data.Text as T\n> import D3JS\n>\n> test :: Int -> IO ()\n> test n = T.writeFile \"generated.js\" \$ reify (box \"#div1\" (300,300) >>= bars n 300 (Data1D [100,20,80,60,120]))\n\nYou can just put the JavaScript file in an HTML file like the following to show a chart.\n\n> <html>\n> <head>\n>   <title>Chart</title>\n> </head>\n> <body>\n>   <div id='div1'></div>\n>   <script charset='utf-8' src='http://d3js.org/d3.v3.min.js'></script>\n>   <script charset='utf-8' src='generated.js'></script>\n> </body>\n> </html>\n\nSee \"D3JS.Example\" for more examples.";
      buildType = "Simple";
    };
    components = {
      "d3js" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.random)
        ];
      };
    };
  }