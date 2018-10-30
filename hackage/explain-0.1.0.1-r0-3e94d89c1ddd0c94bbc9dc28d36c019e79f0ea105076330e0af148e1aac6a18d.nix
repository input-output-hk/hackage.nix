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
      specVersion = "1.10";
      identifier = {
        name = "explain";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "me@joelt.io";
      author = "Joel Taylor";
      homepage = "https://github.com/joelteon/explain";
      url = "";
      synopsis = "Show how expressions are parsed";
      description = "@explain expr@ parenthesizes @expr@ to show you how it's parsed.\n\n@explain@ has a large number of extensions enabled by default: multi-parameter typeclasses, Template Haskell, arrow\nsyntax, and so on. This is mainly for convenience. If necessary, flags to turn certain extension on and off will be\nadded in future versions.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "explain" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.haskell-src-exts)
          ];
        };
      };
    };
  }