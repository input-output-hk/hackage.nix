{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "irc-fun-color"; version = "0.2.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "http://rel4tion.org/projects/irc-fun-color/";
      url = "";
      synopsis = "Add color and style decorations to IRC messages.";
      description = "An extension to IRC allows text formatting to be encoded into a message.\nColors and decorations (e.g. bold) are available. This library can encode\nthis formatting into a plain text message. It also provides integration with\n\"Formatting\" for flexible mixing of styling, formatting and IRC-specific\ntypes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.dlist)
          (hsPkgs.formatting)
          (hsPkgs.irc-fun-types)
          (hsPkgs.text)
          (hsPkgs.text-show)
          ];
        };
      tests = {
        "test" = {
          depends = [ (hsPkgs.base) (hsPkgs.irc-fun-color) (hsPkgs.text) ];
          };
        };
      };
    }