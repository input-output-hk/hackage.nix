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
      specVersion = "1.2";
      identifier = {
        name = "jsmw";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2009, Dmitry Golubovsky";
      maintainer = "golubovsky@gmail.com";
      author = "Dmitry Golubovsky";
      homepage = "";
      url = "";
      synopsis = "Javascript Monadic Writer base package.";
      description = "An EDSL inspired in part by HJ(ava)Script and HSP aimed at coding in typed\nJavascript. It uses WebBits as the underlying representation of Javascript.\n\nThis package provides the basic API sufficient to create simple dynamic web pages.\n\nBelow is a simple example of a program that increments or decrements a value\nin an input field depending on whether /Enter/ or /Shift-Enter/ was pressed.\n\nSave this program in a file, and run @runghc@ on the file. Javascript will be output\nto be placed into HEAD element of a blank HTML page. Give the page body attribute:\n\n> <body onload=\"javascript:main()\">\n\nto run the script when the page loads.\n\nA live example of this program is available here:\n\n<http://code.haskell.org/yc2js/examples/ex1.html>\n\n> module Main where\n>\n> import Prelude hiding (putStrLn)\n> import System.IO.UTF8\n> import BrownPLT.JavaScript\n> import BrownPLT.JavaScript.PrettyPrint\n> import Control.Monad\n> import Language.JSMW\n> import Data.DOM\n> import Data.DOM.Dom\n> import Data.DOM.Html2\n> import Data.DOM.Events\n> import Data.DOM.KeyEvent\n> import Data.DOM.HTMLHRElement\n> import Data.DOM.HTMLInputElement\n>\n> main = putStrLn \$ show \$ stmt \$\n>   FunctionStmt undefined (Id undefined \"main\") [] (getBlock ( runJSMW 0 q))\n>\n>\n> q = do\n>   passive (mkText \$ string\n>     \"Example 1: Press Enter to increase value, Shift-Enter to decrease value\")\n>   passive mkHr\n>   mkInput `container` (do\n>     setHandler \"keypress\" plusOne\n>     ask >>= set'value (string \"0\") >>= focus)\n>\n> plusOne :: OnHandler TKeyEvent THTMLInputElement\n>\n> plusOne e = do\n>   c <- getm'keyCode e\n>   switch (c) \$ do\n>     cDOM_VK_ENTER --> do i <- ask\n>                          v <- getm'value i\n>                          vv <- switch v \$ do\n>                            \"\" --> stringM \"0\"\n>                            none (return v)\n>                          n <- parseInt vv 0\n>                          shft <- get'shiftKey e\n>                          n2 <- switch shft \$ do\n>                            True --> return (n - number 1)\n>                            False --> return (n + number 1)\n>                          once =<< (toString n2 >>= flip set'value i)\n>                          return false\n>     none (return true)\n>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.WebBits)
          (hsPkgs.DOM)
        ];
      };
    };
  }