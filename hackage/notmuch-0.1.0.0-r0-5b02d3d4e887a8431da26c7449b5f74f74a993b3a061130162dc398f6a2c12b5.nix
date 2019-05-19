{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { demos = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "notmuch"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2014-2018  Fraser Tweedale";
      maintainer = "frase@frase.id.au";
      author = "Fraser Tweedale";
      homepage = "https://github.com/purebred-mua/hs-notmuch";
      url = "";
      synopsis = "Haskell binding to Notmuch, the mail indexer";
      description = "Binding to the notmuch mail indexer, providing a hopefully\nsomewhat typesafe way to search your email.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.mtl)
          (hsPkgs.profunctors)
          (hsPkgs.tagged)
          (hsPkgs.time)
          (hsPkgs.text)
          ];
        libs = [ (pkgs."notmuch") (pkgs."talloc") ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs))
          ];
        };
      exes = {
        "hs-notmuch-files" = {
          depends = [ (hsPkgs.base) (hsPkgs.mtl) (hsPkgs.notmuch) ];
          };
        "hs-notmuch-tag-message" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.notmuch)
            ];
          };
        "hs-notmuch-tag-count" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.notmuch)
            ];
          };
        "hs-notmuch-tag-set" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.notmuch)
            ];
          };
        };
      };
    }