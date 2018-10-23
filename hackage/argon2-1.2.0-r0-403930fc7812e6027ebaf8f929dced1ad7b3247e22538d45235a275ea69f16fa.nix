{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      use-system-library = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "argon2";
        version = "1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ollie@ocharles.org.uk";
      author = "Ollie Charles";
      homepage = "https://github.com/ocharles/argon2.git";
      url = "";
      synopsis = "Haskell bindings to libargon2 - the reference implementation of the Argon2 password-hashing function";
      description = "";
      buildType = "Simple";
    };
    components = {
      "argon2" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
        libs = pkgs.lib.optional (flags.use-system-library) (pkgs."argon2");
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.argon2)
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty)
            (hsPkgs.bytestring)
            (hsPkgs.text)
          ];
        };
      };
    };
  }