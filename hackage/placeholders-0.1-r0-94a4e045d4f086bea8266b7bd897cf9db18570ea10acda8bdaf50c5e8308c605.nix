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
      specVersion = "1.6";
      identifier = {
        name = "placeholders";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Andreas Hammar";
      maintainer = "Andreas Hammar <ahammar@gmail.com>";
      author = "Andreas Hammar";
      homepage = "http://github.com/ahammar/placeholders";
      url = "";
      synopsis = "Placeholders for use while developing Haskell code";
      description = "While working on some Haskell code, it is often useful to\nwork incrementally by inserting @undefined@ as a\nplaceholder for missing code.\n\nThis library provides placeholders that produce better\nmessages when evaluated at run-time and also generate\ncompile-time warnings so that they do not get forgotten\nso easily.\nFor details, see <http://github.com/ahammar/placeholders>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }