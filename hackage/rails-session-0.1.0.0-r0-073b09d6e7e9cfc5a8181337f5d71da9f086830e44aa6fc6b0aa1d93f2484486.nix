{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rails-session"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016-2017 Philip Cunningham & Alfredo di Napoli";
      maintainer = "philip@irisconnect.co.uk";
      author = "Philip Cunningham & Alfredo di Napoli";
      homepage = "http://github.com/iconnect/rails-session#readme";
      url = "";
      synopsis = "Decrypt Ruby on Rails sessions in Haskell";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."pbkdf" or ((hsPkgs.pkgs-errors).buildDepError "pbkdf"))
          (hsPkgs."ruby-marshal" or ((hsPkgs.pkgs-errors).buildDepError "ruby-marshal"))
          (hsPkgs."string-conv" or ((hsPkgs.pkgs-errors).buildDepError "string-conv"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "specs" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."rails-session" or ((hsPkgs.pkgs-errors).buildDepError "rails-session"))
            (hsPkgs."ruby-marshal" or ((hsPkgs.pkgs-errors).buildDepError "ruby-marshal"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hspec"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }