{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "postgresql-simple-named"; version = "0.0.0.0"; };
      license = "MPL-2.0";
      copyright = "2019 Holmusk";
      maintainer = "Holmusk <tech@holmusk.com>";
      author = "Dmitrii Kovanikov, Veronika Romashkina";
      homepage = "https://github.com/Holmusk/postgresql-simple-named";
      url = "";
      synopsis = "Implementation of named parameters for `postgresql-simple` library";
      description = "Implementation of named parameters for @postgresql-simple@ library.\n\nHere is an exaple of how it could be used in your code:\n\n> queryNamed [sql|\n>     SELECT *\n>     FROM table\n>     WHERE foo = ?foo\n>       AND bar = ?bar\n>       AND baz = ?foo\n> |] [ \"foo\" =? \"fooBar\"\n>    , \"bar\" =? \"barVar\"\n>    ]";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.postgresql-simple)
          (hsPkgs.text)
          ];
        };
      tests = {
        "postgresql-simple-named-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.postgresql-simple-named)
            (hsPkgs.postgresql-simple)
            (hsPkgs.resource-pool)
            (hsPkgs.transformers)
            ];
          };
        "postgresql-simple-named-doctest" = {
          depends = [ (hsPkgs.base) (hsPkgs.doctest) (hsPkgs.Glob) ];
          };
        };
      };
    }