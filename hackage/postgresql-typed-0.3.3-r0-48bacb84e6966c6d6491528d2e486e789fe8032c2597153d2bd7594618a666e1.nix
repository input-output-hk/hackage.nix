{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      md5 = true;
      binary = true;
      text = true;
      uuid = true;
      scientific = true;
      aeson = true;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "postgresql-typed"; version = "0.3.3"; };
      license = "BSD-3-Clause";
      copyright = "2010-2013 Chris Forno, 2014-2015 Dylan Simon";
      maintainer = "Dylan Simon <dylan-pgtyped@dylex.net>";
      author = "Dylan Simon";
      homepage = "https://github.com/dylex/postgresql-typed";
      url = "";
      synopsis = "A PostgreSQL access library with compile-time SQL type inference";
      description = "Automatically type-check SQL statements at compile time.\nUses Template Haskell and the raw PostgreSQL protocol to describe SQL statements at compile time and provide appropriate type marshalling for both parameters and results.\nAllows not only syntax verification of your SQL but also full type safety between your SQL and Haskell.\nSupports many built-in PostgreSQL types already, including arrays and ranges, and can be easily extended in user code to support any other types.\nOriginally based on Chris Forno's templatepg library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
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
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          ] ++ (pkgs.lib).optional (flags.md5) (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))) ++ (if flags.binary
          then [
            (hsPkgs."postgresql-binary" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-binary"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."uuid" or ((hsPkgs.pkgs-errors).buildDepError "uuid"))
            (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
            ]
          else ((pkgs.lib).optional (flags.text) (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text")) ++ (pkgs.lib).optional (flags.uuid) (hsPkgs."uuid" or ((hsPkgs.pkgs-errors).buildDepError "uuid"))) ++ (pkgs.lib).optional (flags.scientific) (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific")))) ++ (pkgs.lib).optionals (flags.aeson) [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."postgresql-typed" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-typed"))
            ];
          buildable = true;
          };
        };
      };
    }