{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      newbase = true;
      example = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "ansi-wl-pprint";
        version = "0.6.8";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Edward Kmett <ekmett@gmail.com>";
      author = "Daan Leijen, Max Bolingbroke";
      homepage = "http://github.com/ekmett/ansi-wl-pprint";
      url = "";
      synopsis = "The Wadler/Leijen Pretty Printer for colored ANSI terminal output";
      description = "This is a pretty printing library based on Wadler's paper \"A Prettier Printer\". It has been enhanced with support for ANSI terminal colored output using the ansi-terminal package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.ansi-terminal)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups)) ++ [
          (hsPkgs.base)
        ];
      };
      exes = {
        "ansi-wl-pprint-example" = {
          depends = [
            (hsPkgs.ansi-terminal)
          ] ++ [ (hsPkgs.base) ];
        };
      };
    };
  }