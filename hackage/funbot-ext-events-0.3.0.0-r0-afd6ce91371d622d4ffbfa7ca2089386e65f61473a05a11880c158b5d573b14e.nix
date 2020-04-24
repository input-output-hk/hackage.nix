{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "funbot-ext-events"; version = "0.3.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "https://notabug.org/fr33domlover/funbot-ext-events";
      url = "";
      synopsis = "Interact with FunBot's external events.";
      description = "This is a library providing types and tools for interacting with\n<https://notabug.org/fr33domlover/funbot FunBot>'s external events. The\ncode was extracted from FunBot itself, so that independent programs can\ninteract with it, e.g. by using its client API.\nSince the provided types change every time an external event type is added or\nmodified, many of this library's releases are expected to break\ncompatibility.  In most cases you should either use a higher-level library\nsuch as <https://notabug.org/fr33domlover/funbot-client funbot-client>, or\nperhaps create one yourself.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }