{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "irc-fun-color"; version = "0.1.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "http://rel4tion.org/projects/irc-fun-color/";
      url = "";
      synopsis = "Add color and style decorations to IRC messages.";
      description = "An extension to IRC allows text formatting to be encoded into a message.\nColors and decorations (e.g. bold) are available. This library can encode\nthis formatting into a plain text message.\n\nThe \\\"fun\\\" part of the library name refers to the set of integrated\nirc-fun-* libraries. This is the first one to be released to Hackage, but all\nof them are already available as free software in Darcs repositories.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; };
      tests = {
        "test" = { depends = [ (hsPkgs.base) (hsPkgs.irc-fun-color) ]; };
        };
      };
    }