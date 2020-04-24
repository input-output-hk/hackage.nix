{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      md5 = true;
      binary = true;
      text = true;
      uuid = true;
      scientific = true;
      aeson = true;
      hdbc = true;
      tls = true;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "postgresql-typed"; version = "0.6.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2010-2013 Chris Forno, 2014-2019 Dylan Simon";
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
        depends = (((([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."haskell-src-meta" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-meta"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          ] ++ (pkgs.lib).optionals (flags.md5) [
          (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
          (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
          ]) ++ (if flags.binary
          then [
            (hsPkgs."postgresql-binary" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-binary"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."uuid" or ((hsPkgs.pkgs-errors).buildDepError "uuid"))
            (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
            ]
          else ((pkgs.lib).optional (flags.text) (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text")) ++ (pkgs.lib).optional (flags.uuid) (hsPkgs."uuid" or ((hsPkgs.pkgs-errors).buildDepError "uuid"))) ++ (pkgs.lib).optional (flags.scientific) (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific")))) ++ (pkgs.lib).optional (flags.aeson) (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))) ++ (pkgs.lib).optional (flags.hdbc) (hsPkgs."HDBC" or ((hsPkgs.pkgs-errors).buildDepError "HDBC"))) ++ (pkgs.lib).optionals (flags.tls) [
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."tls" or ((hsPkgs.pkgs-errors).buildDepError "tls"))
          (hsPkgs."x509" or ((hsPkgs.pkgs-errors).buildDepError "x509"))
          (hsPkgs."x509-store" or ((hsPkgs.pkgs-errors).buildDepError "x509-store"))
          (hsPkgs."x509-validation" or ((hsPkgs.pkgs-errors).buildDepError "x509-validation"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."postgresql-typed" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-typed"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ] ++ (pkgs.lib).optional (flags.tls) (hsPkgs."tls" or ((hsPkgs.pkgs-errors).buildDepError "tls"));
          buildable = true;
          };
        "hdbc" = {
          depends = (pkgs.lib).optionals (flags.hdbc) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."convertible" or ((hsPkgs.pkgs-errors).buildDepError "convertible"))
            (hsPkgs."postgresql-typed" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-typed"))
            (hsPkgs."HDBC" or ((hsPkgs.pkgs-errors).buildDepError "HDBC"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ] ++ (pkgs.lib).optional (flags.tls) (hsPkgs."tls" or ((hsPkgs.pkgs-errors).buildDepError "tls"));
          buildable = if flags.hdbc then true else false;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."postgresql-typed" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-typed"))
            ] ++ (pkgs.lib).optional (flags.tls) (hsPkgs."tls" or ((hsPkgs.pkgs-errors).buildDepError "tls"));
          buildable = true;
          };
        };
      };
    }