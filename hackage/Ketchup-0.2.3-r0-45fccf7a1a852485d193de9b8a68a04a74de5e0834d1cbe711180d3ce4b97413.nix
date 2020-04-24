{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Ketchup"; version = "0.2.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "zikyky@gmail.com";
      author = "Alessandro Gatti";
      homepage = "https://github.com/Hamcha/Ketchup";
      url = "";
      synopsis = "A super small web framework for those who don't like big and fancy codebases";
      description = "Ketchup is a very small HTTP server implementation, currently under 300 LoC total!\n\nKetchup is also made to be as modular and embeddable as possible, if you want a cabal-free Haskell app, just take those two/three files you need and put it in your project!\n\nCurrently Ketchup comes with:\n\n* Basic httpd functionality (IPV4 only for now)\n\n* Regexp routing with parameters (ie. \\`/user/:name/(.\\*)\\`)\n\n* Static file handler (ie. \\`static \\\".\\\"\\` as route/handler)\n\nMost of the project is dependency-free and only uses stuff included in Prelude, with the exception of Ketchup.Static who uses the mime-types package from Hackage, which is a single separately downloadable file.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."mime-types" or ((hsPkgs.pkgs-errors).buildDepError "mime-types"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."regex-pcre-builtin" or ((hsPkgs.pkgs-errors).buildDepError "regex-pcre-builtin"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }