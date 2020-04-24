{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "wai-middleware-static-caching";
        version = "0.6.0.1";
        };
      license = "BSD-3-Clause";
      copyright = "(c) 2012-2014 Andrew Farmer, (c) 2015 Alexander Thiemann";
      maintainer = "Alexander Thiemann <mail@athiemann.net>";
      author = "Andrew Farmer <afarmer@ittc.ku.edu>, Alexander Thiemann <mail@athiemann.net>";
      homepage = "https://github.com/agrafix/wai-middleware-static";
      url = "";
      synopsis = "WAI middleware that serves requests to static files.";
      description = "Fork of wai-middleware-static introducing caching:\nWAI middleware that intercepts requests to static files and serves them\nif they exist. Also implements caching strategies.\n\n[WAI] <http://hackage.haskell.org/package/wai>\n[wai-middleware-static] <http://hackage.haskell.org/package/wai-middleware-static>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base16-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base16-bytestring"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."expiring-cache-map" or ((hsPkgs.pkgs-errors).buildDepError "expiring-cache-map"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          ];
        buildable = true;
        };
      };
    }