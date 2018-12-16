{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "countable-inflections";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "2016 Brady Ouren";
      maintainer = "Brady Ouren <brady@andand.co>";
      author = "Brady Ouren <brady@andand.co>";
      homepage = "https://github.com/tippenein/countable-inflections";
      url = "";
      synopsis = "Countable Text Inflections";
      description = "Provides methods for singularizing and pluralizing text.\nThe library is based on Rails' inflections.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.text)
          (hsPkgs.regex-pcre-builtin)
          (hsPkgs.pcre-utils)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.countable-inflections)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.text)
          ];
        };
      };
    };
  }