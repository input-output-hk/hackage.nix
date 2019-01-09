{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "RJson"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "a.d.drummond@gmail.com";
      author = "Alex Drummond";
      homepage = "";
      url = "";
      synopsis = "A reflective JSON serializer/parser.";
      description = "This package uses the Scrap Your Boilerplate With Class approach\nto generics to implement a reflective Json serializer and deserializer.\nNested record types can be automatically converted to corresponding\nJSON objects and vice versa. In both cases, various aspects of\nserializing and deserializing can be customized by implementing instances of\ntype classes. Note that only Haskell 98 types can be\nserialized and deserialized, and that the use of strict constructors will lead\nto runtime errors with the current implemetation. Apart from the\nreflective stuff, the package also provides a straightforward\nHaskell representation of JSON data, together with a unicode-safe\nparser and a suitable implementation of 'show'. The code hasn't yet\nbeen tested for performance; it might be quite slow.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.bytestring)
          (hsPkgs.iconv)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.syb-with-class)
          ];
        };
      };
    }