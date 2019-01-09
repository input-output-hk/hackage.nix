{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "ImperativeHaskell"; version = "2.0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Matthew Mirman <mmirman@andrew.cmu.edu>";
      author = "Matthew Mirman";
      homepage = "https://github.com/mmirman/ImperativeHaskell";
      url = "";
      synopsis = "A library for writing Imperative style haskell.";
      description = "A monad that uses GADTs and continuations to replicate what it is like to program\nin an imperative language like C, Java or Go with \"return\", \"for\", \"break\", \"continue\",\nand mutable references.\n\nIn Version 2:\n\n* Single return function: @return'@\n\n* A Go language style @defer'@ primitive.\n\n* Proper compiler errors when @break'@ and @continue'@ are used incorrectly\n\n* /Note/: Version 2 has a very different internal structure from version 1,\nand thus there will likely be type signature conflicts.\n\nFor more information see:\n\n* Examples on github <http://github.com/mmirman/ImperativeHaskell/blob/master/Main.hs>\n\n* The relevant blog post <http://kormacode.blogspot.com/2011/11/c-style-haskell_10.html>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.mtl) (hsPkgs.template-haskell) ];
        };
      };
    }