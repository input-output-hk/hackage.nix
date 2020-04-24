{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "wai-middleware-clacks"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 Pavan Rikhi";
      maintainer = "pavan.rikhi@gmail.com";
      author = "Pavan Rikhi";
      homepage = "https://github.com/prikhi/wai-middleware-clacks#readme";
      url = "";
      synopsis = "GNU Terry Pratchett - Add the X-Clacks-Overhead Header to Wai Responses.";
      description = "/\"You know they'll never really die while the Trunk is alive.\"/\n\n@wai-middleware-clacks@ is a middleware that inserts an arbitrary\n@X-Clacks-Overhead@ header into every Wai response. From\n<http://gnuterrypratchett.com GNU Terry Pratchett>:\n\n> In Terry Pratchett's Discworld series, the clacks are a series of\n> semaphore towers loosely based on the concept of the telegraph. Invented\n> by an artificer named Robert Dearheart, the towers could send messages\n> \"at the speed of light\" using standardized codes. Three of these codes\n> are of particular import:\n>\n> G: send the message on\n> N: do not log the message\n> U: turn the message around at the end of the line and send it back again\n>\n> When Dearheart's son John died due to an accident while working on a\n> clacks tower, Dearheart inserted John's name into the overhead of the\n> clacks with a \"GNU\" in front of it as a way to memorialize his son forever\n> (or for at least as long as the clacks are standing.)\n>\n>\n> Keeping the legacy of Sir Terry Pratchett alive forever. For as long as\n> his name is still passed along the Clacks, Death can't have him.\n\nPlease see the\n<https://github.com/prikhi/wai-middleware-clacks/blob/master/README.md README>\nor\n<https://hackage.haskell.org/package/wai-middleware-clacks/docs/Network-Wai-Middleware-Clacks.html module documentation>\nfor usage instructions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-compat-batteries" or ((hsPkgs.pkgs-errors).buildDepError "base-compat-batteries"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          ];
        buildable = true;
        };
      tests = {
        "wai-middleware-clacks-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base-compat-batteries" or ((hsPkgs.pkgs-errors).buildDepError "base-compat-batteries"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-wai" or ((hsPkgs.pkgs-errors).buildDepError "tasty-wai"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."wai-middleware-clacks" or ((hsPkgs.pkgs-errors).buildDepError "wai-middleware-clacks"))
            ];
          buildable = true;
          };
        };
      };
    }