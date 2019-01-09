{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "syntactical"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Vo Minh Thu <noteed@gmail.com>";
      author = "Vo Minh Thu <noteed@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Distfix expression parsing library";
      description = "Syntactical is an expression parsing library. It supports\ndistfix operators and function application written as\njuxtaposition of symbols.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }