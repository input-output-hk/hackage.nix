{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Ketchup"; version = "0.4.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "zikyky@gmail.com";
      author = "Alessandro Gatti";
      homepage = "https://github.com/Hamcha/Ketchup";
      url = "";
      synopsis = "A super small web framework for those who don't like big and fancy codebases";
      description = "Ketchup is a very small HTTP server implementation, currently under 400 LoC total!\n\nKetchup is also made to be as modular and embeddable as possible, if you want a cabal-free Haskell app, just take those two/three files you need and put it in your project!\n\nCurrently Ketchup comes with:\n\n* Basic httpd functionality (IPV4 only for now)\n\n* Regexp routing with parameters (ie. \\`/user/:name/?\\`)\n\n* Static file handler (ie. \\`static \\\".\\\"\\` as route/handler)\n\n* Basic Auth (please use it over a HTTPS reverse proxy)\n\nDependencies\n\nThe core parts of Ketchup are all depedency free, that includes Ketchup.Httpd and Ketchup.Utils (and to a certain extent, Ketchup.Chunked).\nThe dependencies required are for the following modules:\n\n* Ketchup.Static (uses mime-types)\n\n* Ketchup.Auth (uses base64-bytestring)\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."mime-types" or ((hsPkgs.pkgs-errors).buildDepError "mime-types"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }