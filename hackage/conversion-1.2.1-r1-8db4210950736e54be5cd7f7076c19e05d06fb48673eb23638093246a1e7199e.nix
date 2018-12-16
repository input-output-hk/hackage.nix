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
        name = "conversion";
        version = "1.2.1";
      };
      license = "MIT";
      copyright = "(c) 2015, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/conversion";
      url = "";
      synopsis = "Universal converter between values of different types";
      description = "This library provides a typeclass with instances for types\ndefined in \\\"base\\\".\nInstances for other types are expected to be defined in other libraries.\nSuch libraries should be listed under\n<http://hackage.haskell.org/packages/#cat:Conversion the Conversion category>.\nSo far the following are known:\n\n* <http://hackage.haskell.org/package/conversion-bytestring \"conversion-bytestring\">\n\n* <http://hackage.haskell.org/package/conversion-text \"conversion-text\">\n\n* <http://hackage.haskell.org/package/conversion-case-insensitive \"conversion-case-insensitive\">";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base-prelude)
        ];
      };
    };
  }