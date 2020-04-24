{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "hs2ps"; version = "0.1.4.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "williamrusnack@gmail.com";
      author = "William Rusnack";
      homepage = "https://bitbucket.org/william_rusnack/hs2ps";
      url = "";
      synopsis = "Translate Haskell types to PureScript";
      description = "Please see the README on BitBucket at <https://bitbucket.org/william_rusnack/hs2ps/src/master/README.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "hs2ps-types-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hs2ps" or ((hsPkgs.pkgs-errors).buildDepError "hs2ps"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }