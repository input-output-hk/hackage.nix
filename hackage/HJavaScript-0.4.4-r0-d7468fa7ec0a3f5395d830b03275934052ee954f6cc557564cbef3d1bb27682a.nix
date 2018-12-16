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
      specVersion = "0";
      identifier = {
        name = "HJavaScript";
        version = "0.4.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "joel.bjornson@gmail.com, nibro@cs.chalmers.se";
      author = "Joel Bjornson, Niklas Broberg";
      homepage = "";
      url = "";
      synopsis = "HJavaScript is an abstract syntax for a typed subset of JavaScript.";
      description = "HJavaScript defines an abstract syntax and pretty printer for\na subset of JavaScript. as Language.HJavaScript. However, a significant\ndifference from JavaScript is that HJavaScript is typed, even on the\nabstract syntax level using GADTs. The subset of JavaScript that is\nsupported is those parts that lend themself to typing\n(i.e. no prototyping of classes).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }