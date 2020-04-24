{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "RJson"; version = "0.3.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "a.d.drummond@gmail.com";
      author = "Alex Drummond";
      homepage = "";
      url = "";
      synopsis = "A reflective JSON serializer/parser.";
      description = "See included README for some examples.\nThis package uses the Scrap Your Boilerplate With Class approach\nto generics to implement a reflective JSON serializer and deserializer.\nNested record types are automatically converted to corresponding\nJSON objects and vice versa. In both cases, various aspects of\nserializing and deserializing can be customized by implementing instances of\ntype classes. Note that only Haskell 98 types can be\nserialized and deserialized, and that the use of strict constructors will lead\nto runtime errors with the current implemetation. Apart from the\nreflective stuff, the package also provides a straightforward\nHaskell representation of JSON data, together with a unicode-safe\nparser and a suitable implementation of 'show'. The code hasn't yet\nbeen tested for performance; it might be quite slow.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."iconv" or ((hsPkgs.pkgs-errors).buildDepError "iconv"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."syb-with-class" or ((hsPkgs.pkgs-errors).buildDepError "syb-with-class"))
          ];
        buildable = true;
        };
      };
    }