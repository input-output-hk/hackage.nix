{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "http2-client-exe"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 Lucas DiCioccio";
      maintainer = "lucas@dicioccio.fr";
      author = "Lucas DiCioccio";
      homepage = "https://github.com/lucasdicioccio/http2-client-exe#readme";
      url = "";
      synopsis = "A command-line http2 client.";
      description = "A reference command-line tool using http2-client. Please see the README on GitHub at <https://github.com/lucasdicioccio/http2-client-exe#readme>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "http2-client-exe" = {
          depends = [
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."http2" or ((hsPkgs.pkgs-errors).buildDepError "http2"))
            (hsPkgs."http2-client" or ((hsPkgs.pkgs-errors).buildDepError "http2-client"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."tls" or ((hsPkgs.pkgs-errors).buildDepError "tls"))
            ];
          buildable = true;
          };
        };
      };
    }