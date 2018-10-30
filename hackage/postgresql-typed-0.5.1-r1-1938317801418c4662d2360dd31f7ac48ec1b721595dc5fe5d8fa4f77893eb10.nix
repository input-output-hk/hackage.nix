{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      md5 = true;
      binary = true;
      text = true;
      uuid = true;
      scientific = true;
      aeson = true;
      hdbc = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "postgresql-typed";
        version = "0.5.1";
      };
      license = "BSD-3-Clause";
      copyright = "2010-2013 Chris Forno, 2014-2017 Dylan Simon";
      maintainer = "Dylan Simon <dylan-pgtyped@dylex.net>";
      author = "Dylan Simon";
      homepage = "https://github.com/dylex/postgresql-typed";
      url = "";
      synopsis = "PostgreSQL interface with compile-time SQL type checking, optional HDBC backend";
      description = "Automatically type-check SQL statements at compile time.\nUses Template Haskell and the raw PostgreSQL protocol to describe SQL statements at compile time and provide appropriate type marshalling for both parameters and results.\nAllows not only syntax verification of your SQL but also full type safety between your SQL and Haskell.\nSupports many built-in PostgreSQL types already, including arrays and ranges, and can be easily extended in user code to support any other types.\n\nAlso includes an optional HDBC backend that, since it uses the raw PostgreSQL protocol, may be more efficient than the normal libpq backend in some cases (though provides no more type safety than HDBC-postgresql when used without templates).\n\nOriginally based on Chris Forno's templatepg library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ((([
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.binary)
          (hsPkgs.containers)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.bytestring)
          (hsPkgs.template-haskell)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.network)
          (hsPkgs.attoparsec)
          (hsPkgs.utf8-string)
        ] ++ pkgs.lib.optionals (flags.md5) [
          (hsPkgs.cryptonite)
          (hsPkgs.memory)
        ]) ++ (if flags.binary
          then [
            (hsPkgs.postgresql-binary)
            (hsPkgs.text)
            (hsPkgs.uuid)
            (hsPkgs.scientific)
          ]
          else (pkgs.lib.optional (flags.text) (hsPkgs.text) ++ pkgs.lib.optional (flags.uuid) (hsPkgs.uuid)) ++ pkgs.lib.optional (flags.scientific) (hsPkgs.scientific))) ++ pkgs.lib.optional (flags.aeson) (hsPkgs.aeson)) ++ pkgs.lib.optional (flags.hdbc) (hsPkgs.HDBC);
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.time)
            (hsPkgs.bytestring)
            (hsPkgs.postgresql-typed)
            (hsPkgs.QuickCheck)
          ];
        };
        "hdbc" = {
          depends  = pkgs.lib.optionals (flags.hdbc) [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.time)
            (hsPkgs.containers)
            (hsPkgs.convertible)
            (hsPkgs.postgresql-typed)
            (hsPkgs.HDBC)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }