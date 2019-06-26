{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { cereal = true; serialise = true; http-api-data = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "base64-bytestring-type"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/base64-bytestring-type#readme";
      url = "";
      synopsis = "A newtype around ByteString, for base64 encoding";
      description = "A newtype around ByteString, for base64 encoding.\nStrict and lazy, normal and url alphabet variants.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.base-compat)
          (hsPkgs.base64-bytestring)
          (hsPkgs.hashable)
          (hsPkgs.QuickCheck)
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs.semigroups)) ++ (pkgs.lib).optional (flags.cereal) (hsPkgs.cereal)) ++ (pkgs.lib).optional (flags.serialise) (hsPkgs.serialise)) ++ (pkgs.lib).optional (flags.http-api-data) (hsPkgs.http-api-data);
        };
      tests = {
        "tests" = {
          depends = (([
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring-type)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            ] ++ (pkgs.lib).optional (flags.cereal) (hsPkgs.cereal)) ++ (pkgs.lib).optional (flags.serialise) (hsPkgs.serialise)) ++ (pkgs.lib).optional (flags.http-api-data) (hsPkgs.http-api-data);
          };
        };
      };
    }