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
        name = "conffmt";
        version = "0.2.3.0";
      };
      license = "MIT";
      copyright = "Copyright (c) 2016 Pedro Tacla Yamada";
      maintainer = "tacla.yamada@gmail.com";
      author = "Pedro Tacla Yamada";
      homepage = "https://github.com/beijaflor-io/haskell-language-conf#readme";
      url = "";
      synopsis = "A .conf file formatter";
      description = "\"conffmt\" is a @.conf@ file formatter that serves as an example of @language-conf@";
      buildType = "Simple";
    };
    components = {
      exes = {
        "conffmt" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.optparse-applicative)
            (hsPkgs.megaparsec)
            (hsPkgs.language-conf)
            (hsPkgs.pretty)
          ];
        };
      };
    };
  }