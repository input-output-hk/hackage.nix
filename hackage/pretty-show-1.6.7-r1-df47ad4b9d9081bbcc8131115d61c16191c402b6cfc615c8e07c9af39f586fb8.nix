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
      specVersion = "1.8";
      identifier = {
        name = "pretty-show";
        version = "1.6.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "iavor.diatchki@gmail.com";
      author = "Iavor S. Diatchki";
      homepage = "http://wiki.github.com/yav/pretty-show";
      url = "";
      synopsis = "Tools for working with derived `Show` instances and generic\ninspection of values.";
      description = "We provide a library and an executable for working with derived 'Show'\ninstances. By using the library, we can parse derived 'Show' instances into a\ngeneric data structure. The @ppsh@ tool uses the library to produce\nhuman-readable versions of 'Show' instances, which can be quite handy for\ndebugging Haskell programs.  We can also render complex generic values into\nan interactive Html page, for easier examination.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.haskell-lexer)
          (hsPkgs.pretty)
          (hsPkgs.filepath)
          (hsPkgs.ghc-prim)
        ];
        build-tools = [
          (hsPkgs.buildPackages.happy)
        ];
      };
      exes = {
        "ppsh" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pretty-show)
          ];
        };
      };
    };
  }