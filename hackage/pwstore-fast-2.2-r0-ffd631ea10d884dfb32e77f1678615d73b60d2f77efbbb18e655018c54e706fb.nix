{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "pwstore-fast"; version = "2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "pjscott@iastate.edu";
      author = "Peter Scott";
      homepage = "https://github.com/PeterScott/pwstore";
      url = "";
      synopsis = "Secure password storage.";
      description = "To store passwords securely, they should be salted,\nthen hashed with a slow hash function. This library\nuses PBKDF1-SHA256, and handles all the details.\nIt uses the cryptohash package for speed; if you need\na pure Haskell library, pwstore-purehaskell has the\nexact same API, but uses only pure Haskell. It is\nabout 25 times slower than this package, but still\nquite usable.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }